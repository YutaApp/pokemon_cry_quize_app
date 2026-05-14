import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:pokemon_get/features/pokemon/data/datasources/cache_service.dart';
import 'package:pokemon_get/features/pokemon/presentation/providers/providers.dart';
import 'package:pokemon_get/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SoLoud.instance.init();

  // CacheService を確実に初期化してから ProviderScope を起動
  final cache = CacheService();
  await cache.init(); // ここで _box が確実にセットされる

  runApp(
    ProviderScope(
      overrides: [
        // 初期化済みインスタンスを注入
        cacheServiceProvider.overrideWithValue(cache),
      ],
      child: const PokemonQuizApp(),
    ),
  );
}

class PokemonQuizApp extends ConsumerWidget {
  const PokemonQuizApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'ポケモン鳴き声クイズ',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
