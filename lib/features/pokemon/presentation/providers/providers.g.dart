// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dio)
final dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'ac2deb5db598c527d9796023bd627f1499003430';

@ProviderFor(cacheService)
final cacheServiceProvider = CacheServiceProvider._();

final class CacheServiceProvider
    extends $FunctionalProvider<CacheService, CacheService, CacheService>
    with $Provider<CacheService> {
  CacheServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cacheServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cacheServiceHash();

  @$internal
  @override
  $ProviderElement<CacheService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CacheService create(Ref ref) {
    return cacheService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CacheService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CacheService>(value),
    );
  }
}

String _$cacheServiceHash() => r'bf5dee3937cc8737dd1550a43c77eedd44eba0bd';

@ProviderFor(pokeApiService)
final pokeApiServiceProvider = PokeApiServiceProvider._();

final class PokeApiServiceProvider
    extends $FunctionalProvider<PokeApiService, PokeApiService, PokeApiService>
    with $Provider<PokeApiService> {
  PokeApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokeApiServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokeApiServiceHash();

  @$internal
  @override
  $ProviderElement<PokeApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PokeApiService create(Ref ref) {
    return pokeApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokeApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokeApiService>(value),
    );
  }
}

String _$pokeApiServiceHash() => r'4962783d0b930f548cae5b7b5b849de849d7a649';

@ProviderFor(pokemonRepository)
final pokemonRepositoryProvider = PokemonRepositoryProvider._();

final class PokemonRepositoryProvider
    extends
        $FunctionalProvider<
          IPokemonRepository,
          IPokemonRepository,
          IPokemonRepository
        >
    with $Provider<IPokemonRepository> {
  PokemonRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonRepositoryHash();

  @$internal
  @override
  $ProviderElement<IPokemonRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IPokemonRepository create(Ref ref) {
    return pokemonRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IPokemonRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IPokemonRepository>(value),
    );
  }
}

String _$pokemonRepositoryHash() => r'0133d4b120a30db84f16fee33da6336e2bcbe027';

@ProviderFor(fetchPokemonMasterUseCase)
final fetchPokemonMasterUseCaseProvider = FetchPokemonMasterUseCaseProvider._();

final class FetchPokemonMasterUseCaseProvider
    extends
        $FunctionalProvider<
          FetchPokemonMasterUseCase,
          FetchPokemonMasterUseCase,
          FetchPokemonMasterUseCase
        >
    with $Provider<FetchPokemonMasterUseCase> {
  FetchPokemonMasterUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchPokemonMasterUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchPokemonMasterUseCaseHash();

  @$internal
  @override
  $ProviderElement<FetchPokemonMasterUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FetchPokemonMasterUseCase create(Ref ref) {
    return fetchPokemonMasterUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchPokemonMasterUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchPokemonMasterUseCase>(value),
    );
  }
}

String _$fetchPokemonMasterUseCaseHash() =>
    r'154d23de3266f851e3c03f334c535495e4c216b3';

@ProviderFor(generateQuizUseCase)
final generateQuizUseCaseProvider = GenerateQuizUseCaseProvider._();

final class GenerateQuizUseCaseProvider
    extends
        $FunctionalProvider<
          GenerateQuizUseCase,
          GenerateQuizUseCase,
          GenerateQuizUseCase
        >
    with $Provider<GenerateQuizUseCase> {
  GenerateQuizUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'generateQuizUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$generateQuizUseCaseHash();

  @$internal
  @override
  $ProviderElement<GenerateQuizUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GenerateQuizUseCase create(Ref ref) {
    return generateQuizUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GenerateQuizUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GenerateQuizUseCase>(value),
    );
  }
}

String _$generateQuizUseCaseHash() =>
    r'b578681d5d3ebce726687f971370f82c03a26b49';

@ProviderFor(calculateScoreUseCase)
final calculateScoreUseCaseProvider = CalculateScoreUseCaseProvider._();

final class CalculateScoreUseCaseProvider
    extends
        $FunctionalProvider<
          CalculateScoreUseCase,
          CalculateScoreUseCase,
          CalculateScoreUseCase
        >
    with $Provider<CalculateScoreUseCase> {
  CalculateScoreUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'calculateScoreUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$calculateScoreUseCaseHash();

  @$internal
  @override
  $ProviderElement<CalculateScoreUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CalculateScoreUseCase create(Ref ref) {
    return calculateScoreUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CalculateScoreUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CalculateScoreUseCase>(value),
    );
  }
}

String _$calculateScoreUseCaseHash() =>
    r'a0b822812fb6793622cbec32f12cb7d87c5aabd7';

@ProviderFor(LoadingProgress)
final loadingProgressProvider = LoadingProgressProvider._();

final class LoadingProgressProvider
    extends $NotifierProvider<LoadingProgress, double> {
  LoadingProgressProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadingProgressProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadingProgressHash();

  @$internal
  @override
  LoadingProgress create() => LoadingProgress();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$loadingProgressHash() => r'a336725e66d49d2fb10b883f350a730b4ecee0d4';

abstract class _$LoadingProgress extends $Notifier<double> {
  double build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<double, double>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<double, double>,
              double,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(PokemonMaster)
final pokemonMasterProvider = PokemonMasterProvider._();

final class PokemonMasterProvider
    extends $AsyncNotifierProvider<PokemonMaster, List<PokemonQuizItem>> {
  PokemonMasterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonMasterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonMasterHash();

  @$internal
  @override
  PokemonMaster create() => PokemonMaster();
}

String _$pokemonMasterHash() => r'51c8d649c2ee63d940b1a6095846fc7ba282c36f';

abstract class _$PokemonMaster extends $AsyncNotifier<List<PokemonQuizItem>> {
  FutureOr<List<PokemonQuizItem>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<PokemonQuizItem>>, List<PokemonQuizItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<PokemonQuizItem>>,
                List<PokemonQuizItem>
              >,
              AsyncValue<List<PokemonQuizItem>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
