// presentation/providers/providers.dart

import 'package:dio/dio.dart';
import 'package:pokemon_get/features/pokemon/data/datasources/cache_service.dart';
import 'package:pokemon_get/features/pokemon/data/datasources/pokemon_api_service.dart';
import 'package:pokemon_get/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_generation.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_quiz_item.dart';
import 'package:pokemon_get/features/pokemon/domain/repositories/i_pokemon_repository.dart';
import 'package:pokemon_get/features/pokemon/domain/use_cases/calculate_socre_use_case.dart';
import 'package:pokemon_get/features/pokemon/domain/use_cases/fetch_pokemon_master_use_case.dart';
import 'package:pokemon_get/features/pokemon/domain/use_cases/generate_quiz_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

// ─────────────────────────────────────────────
// インフラ層
// ─────────────────────────────────────────────

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://pokeapi.co/api/v2',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );
  assert(() {
    dio.interceptors.add(LogInterceptor());
    return true;
  }());
  return dio;
}

@Riverpod(keepAlive: true)
CacheService cacheService(Ref ref) => CacheService();

@Riverpod(keepAlive: true)
PokeApiService pokeApiService(Ref ref) =>
    PokeApiService(dio: ref.watch(dioProvider));

@Riverpod(keepAlive: true)
IPokemonRepository pokemonRepository(Ref ref) => PokemonRepositoryImpl(
  api: ref.watch(pokeApiServiceProvider),
  cache: ref.watch(cacheServiceProvider),
);

// ─────────────────────────────────────────────
// ユースケース
// ─────────────────────────────────────────────

@Riverpod(keepAlive: true)
FetchPokemonMasterUseCase fetchPokemonMasterUseCase(Ref ref) =>
    FetchPokemonMasterUseCase(repository: ref.watch(pokemonRepositoryProvider));

@Riverpod(keepAlive: true)
GenerateQuizUseCase generateQuizUseCase(Ref ref) =>
    GenerateQuizUseCase(repository: ref.watch(pokemonRepositoryProvider));

@Riverpod(keepAlive: true)
CalculateScoreUseCase calculateScoreUseCase(Ref ref) =>
    const CalculateScoreUseCase();

// ─────────────────────────────────────────────
// ポケモンマスタ + 読み込み進捗
// ─────────────────────────────────────────────

@riverpod
class LoadingProgress extends _$LoadingProgress {
  @override
  double build() => 0.0;
  void update(double v) => state = v;
}

@riverpod
class PokemonMaster extends _$PokemonMaster {
  @override
  Future<List<PokemonQuizItem>> build() => _fetch(PokemonGeneration.gen1);

  Future<void> reload(PokemonGeneration generation) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetch(generation));
  }

  Future<List<PokemonQuizItem>> _fetch(PokemonGeneration generation) {
    return ref
        .read(fetchPokemonMasterUseCaseProvider)
        .execute(
          generation: generation,
          onProgress: (progress) {
            // microtask で build() の完了後に更新をスケジュール
            Future.microtask(
              () => ref.read(loadingProgressProvider.notifier).update(progress),
            );
          },
        );
  }
}
