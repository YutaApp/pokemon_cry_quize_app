// presentation/screens/splash_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_get/features/pokemon/presentation/providers/providers.dart';

import 'package:pokemon_get/features/pokemon/presentation/screens/home_screen.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(loadingProgressProvider);
    final masterAsync = ref.watch(pokemonMasterProvider);

    return Scaffold(
      body: masterAsync.when(
        loading: () => _LoadingView(progress: progress),
        error: (e, _) => _ErrorView(
          message: e.toString(),
          onRetry: () => ref.invalidate(pokemonMasterProvider),
        ),
        data: (_) => const HomeScreen(),
      ),
    );
  }
}

// ── ローディング ──

class _LoadingView extends StatelessWidget {
  const _LoadingView({required this.progress});
  final double progress;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.catching_pokemon, size: 72, color: cs.primary),
            const SizedBox(height: 32),
            Text(
              'ポケモン鳴き声クイズ',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: progress == 0.0 ? null : progress,
                minHeight: 6,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              progress == 0.0 ? 'データを読み込み中...' : '${(progress * 100).toInt()}%',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

// ── エラー ──

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});
  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.wifi_off_rounded,
              size: 56,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('再試行'),
            ),
          ],
        ),
      ),
    );
  }
}
