import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:pokemon_get/features/pokemon/data/datasources/cache_service.dart';
import 'package:pokemon_get/features/pokemon/presentation/providers/providers.dart';
import 'package:pokemon_get/features/pokemon/presentation/screens/splash_screen.dart';

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

class PokemonQuizApp extends StatelessWidget {
  const PokemonQuizApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const SplashScreen(),
    );
  }
}
