import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pokemon_get/features/pokemon/presentation/screens/home_screen.dart';
import 'package:pokemon_get/features/pokemon/presentation/screens/quiz_screen.dart';
import 'package:pokemon_get/features/pokemon/presentation/screens/result_screen.dart';
import 'package:pokemon_get/features/pokemon/presentation/screens/splash_screen.dart';

part 'app_router.g.dart';

abstract final class AppRoute {
  static const splash = '/';
  static const home = '/home';
  static const quiz = '/quiz';
  static const result = '/result';
}

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRoute.splash,
    routes: [
      GoRoute(path: AppRoute.splash, builder: (_, _) => const SplashScreen()),
      GoRoute(path: AppRoute.home, builder: (_, _) => const HomeScreen()),
      GoRoute(path: AppRoute.quiz, builder: (_, _) => const QuizScreen()),
      GoRoute(path: AppRoute.result, builder: (_, _) => const ResultScreen()),
    ],
  );
}
