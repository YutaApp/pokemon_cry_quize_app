// presentation/screens/home_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_generation.dart';
import 'package:pokemon_get/features/pokemon/presentation/providers/providers.dart';
import 'package:pokemon_get/features/pokemon/presentation/providers/quiz_provider.dart';
import 'package:pokemon_get/router/app_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  PokemonGeneration _generation = PokemonGeneration.gen1;
  int _totalQuestions = 10;
  int? _timeLimitSeconds = 10;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),

              // タイトル
              Icon(Icons.catching_pokemon, size: 64, color: cs.primary),
              const SizedBox(height: 12),
              Text(
                'ポケモン\n鳴き声クイズ',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),

              const Spacer(),

              // 設定カード
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 出題世代
                      Text(
                        '出題範囲',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 8),
                      SegmentedButton<PokemonGeneration>(
                        segments: PokemonGeneration.values
                            .map(
                              (g) => ButtonSegment(
                                value: g,
                                label: Text(
                                  g.label,
                                  style: const TextStyle(fontSize: 11),
                                ),
                              ),
                            )
                            .toList(),
                        selected: {_generation},
                        onSelectionChanged: (s) async {
                          setState(() => _generation = s.first);
                          await ref
                              .read(pokemonMasterProvider.notifier)
                              .reload(s.first);
                        },
                        style: const ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),

                      const SizedBox(height: 16),

                      // 問題数
                      Row(
                        children: [
                          Text(
                            '問題数',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const Spacer(),
                          Text('$_totalQuestions 問'),
                        ],
                      ),
                      Slider(
                        value: _totalQuestions.toDouble(),
                        min: 5,
                        max: 20,
                        divisions: 3,
                        label: '$_totalQuestions問',
                        onChanged: (v) =>
                            setState(() => _totalQuestions = v.toInt()),
                      ),

                      const SizedBox(height: 8),

                      // タイマー
                      Row(
                        children: [
                          Text(
                            'タイマー',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const Spacer(),
                          Switch(
                            value: _timeLimitSeconds != null,
                            onChanged: (v) => setState(
                              () => _timeLimitSeconds = v ? 10 : null,
                            ),
                          ),
                        ],
                      ),
                      if (_timeLimitSeconds != null) ...[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text('$_timeLimitSeconds 秒')],
                        ),
                        Slider(
                          value: _timeLimitSeconds!.toDouble(),
                          min: 5,
                          max: 30,
                          divisions: 5,
                          label: '$_timeLimitSeconds秒',
                          onChanged: (v) =>
                              setState(() => _timeLimitSeconds = v.toInt()),
                        ),
                      ],
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // スタートボタン
              FilledButton(
                onPressed: _onStart,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('スタート'),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onStart() async {
    final config = QuizConfig(
      totalQuestions: _totalQuestions,
      timeLimitSeconds: _timeLimitSeconds,
      generation: _generation,
    );
    await ref.read(quizProvider.notifier).startQuiz(config);
    if (!mounted) return;
    await context.push(AppRoute.quiz);
  }
}
