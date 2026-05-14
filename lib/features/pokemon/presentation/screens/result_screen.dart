// presentation/screens/result_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/quiz_result.dart';
import 'package:pokemon_get/features/pokemon/presentation/providers/quiz_provider.dart';
import 'package:pokemon_get/features/pokemon/presentation/screens/home_screen.dart';
import 'package:pokemon_get/features/pokemon/presentation/widgets/pokemon_sprite.dart';
import 'package:pokemon_get/router/app_router.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(quizProvider).value;
    if (session == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final score = session.sessionScore;
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('リザルト')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // スコアカード
              Card(
                color: cs.primaryContainer,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Text(
                        '${score.totalScore}',
                        style: Theme.of(context).textTheme.displayLarge
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: cs.onPrimaryContainer,
                            ),
                      ),
                      Text(
                        '点',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: cs.onPrimaryContainer,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _StatItem(label: '正解率', value: score.accuracyPercent),
                          _StatItem(
                            label: '正解数',
                            value:
                                '${score.correctCount} / ${score.totalCount}',
                          ),
                          _StatItem(label: '最大コンボ', value: '${score.maxCombo}'),
                        ],
                      ),
                      if (score.isPerfect) ...[
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: cs.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'パーフェクト！ +${score.perfectBonus}点',
                            style: TextStyle(
                              color: cs.onPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // 間違えたポケモン
              if (session.results.any((r) => !r.isCorrect)) ...[
                Text(
                  '間違えたポケモン',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 12),
                ...session.results
                    .where((r) => !r.isCorrect)
                    .map((r) => _WrongItem(result: r)),
                const SizedBox(height: 24),
              ],

              // ボタン
              FilledButton(
                onPressed: () async {
                  await ref.read(quizProvider.notifier).restart();
                  if (context.mounted) context.go(AppRoute.quiz);
                },
                child: const Text('もう一度'),
              ),
              const SizedBox(height: 8),
              OutlinedButton(
                onPressed: () => context.go(AppRoute.home),
                child: const Text('ホームへ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── スタット表示 ──

class _StatItem extends StatelessWidget {
  const _StatItem({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: cs.onPrimaryContainer,
          ),
        ),
        Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: cs.onPrimaryContainer),
        ),
      ],
    );
  }
}

// ── 間違えたポケモン行 ──

class _WrongItem extends StatelessWidget {
  const _WrongItem({required this.result});
  final QuizResult result;

  @override
  Widget build(BuildContext context) {
    final answer = result.question.answer;
    final selected = result.isTimeout
        ? null
        : result.question.choices
              .where((c) => c.id == result.selectedId)
              .firstOrNull;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          PokemonSprite(
            artworkUrl: answer.artworkUrl,
            isRevealed: true,
            size: 56,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  answer.nameJa,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  result.isTimeout ? '時間切れ' : '${selected?.nameJa ?? '?'} と回答',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
