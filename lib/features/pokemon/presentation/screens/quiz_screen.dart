// presentation/screens/quiz_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_get/features/pokemon/presentation/providers/quiz_provider.dart';
import 'package:pokemon_get/features/pokemon/presentation/screens/result_screen.dart';
import 'package:pokemon_get/features/pokemon/presentation/widgets/answer_button.dart';
import 'package:pokemon_get/features/pokemon/presentation/widgets/cry_player.dart';
import 'package:pokemon_get/features/pokemon/presentation/widgets/pokemon_sprite.dart';
import 'package:pokemon_get/features/pokemon/presentation/widgets/timer_bar.dart';

class QuizScreen extends ConsumerStatefulWidget {
  const QuizScreen({super.key});

  @override
  ConsumerState<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  final _player = CryPlayer();
  bool _audioLoading = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _playCry());
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  Future<void> _playCry() async {
    final session = ref.read(quizProvider).value;
    if (session == null || session.isFinished) return;
    final url = session.currentQuestion.answer.criesUrl;

    setState(() => _audioLoading = true);
    try {
      await _player.play(url);
    } catch (e) {
      // 再生失敗はサイレントに無視（ボタンで再試行できる）
      debugPrint("音声エラー:$e");
    } finally {
      if (mounted) setState(() => _audioLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // 問題が切り替わったら自動再生
    ref.listen(quizProvider, (prev, next) {
      final prevIndex = prev?.value?.currentIndex;
      final nextIndex = next.value?.currentIndex;
      if (nextIndex != null || prevIndex != nextIndex) {
        _playCry();
      }
    });
    final sessionAsync = ref.watch(quizProvider);

    return sessionAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(
        appBar: AppBar(),
        body: Center(child: Text(e.toString())),
      ),
      data: (session) {
        if (session == null) return const SizedBox.shrink();
        if (session.isFinished) {
          // 全問終了 → リザルト画面へ遷移
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted) return;
            Navigator.of(context).pushReplacement(
              MaterialPageRoute<void>(builder: (_) => const ResultScreen()),
            );
          });
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        return _buildQuiz(context, session);
      },
    );
  }

  Widget _buildQuiz(BuildContext context, QuizSession session) {
    final question = session.currentQuestion;
    final config = session.config;
    final isAnswered = session.isAnswered;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${session.currentIndex + 1} / ${session.questions.length}',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                '${session.sessionScore.totalScore}点',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
          child: Column(
            children: [
              // タイマーバー
              if (config.timeLimitSeconds != null) ...[
                TimerBar(
                  durationSeconds: config.timeLimitSeconds!,
                  isActive: !isAnswered,
                  onExpired: () => ref.read(quizProvider.notifier).timeout(),
                ),
                const SizedBox(height: 12),
              ],

              // スプライト + 再生ボタン
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PokemonSprite(
                        artworkUrl: question.answer.artworkUrl,
                        isRevealed: isAnswered,
                        size: 160,
                      ),
                      const SizedBox(height: 16),
                      _PlayButton(
                        isLoading: _audioLoading,
                        isAnswered: isAnswered,
                        onTap: _playCry,
                      ),
                      if (isAnswered) ...[
                        const SizedBox(height: 12),
                        Text(
                          question.answer.nameJa,
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        _TypeChips(types: question.answer.types),
                      ],
                    ],
                  ),
                ),
              ),

              // 選択肢
              ...question.choices.map((choice) {
                final state = _buttonState(session, choice.id);
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: AnswerButton(
                    pokemon: choice,
                    buttonState: state,
                    onTap: () =>
                        ref.read(quizProvider.notifier).selectAnswer(choice.id),
                  ),
                );
              }),

              // 次へボタン
              if (isAnswered) ...[
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      ref.read(quizProvider.notifier).nextQuestion();
                      _playCry();
                    },
                    child: const Text('次の問題へ'),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  AnswerButtonState _buttonState(QuizSession session, int choiceId) {
    if (!session.isAnswered) return AnswerButtonState.idle;
    if (choiceId == session.currentQuestion.answer.id) {
      return AnswerButtonState.correct;
    }
    if (choiceId == session.selectedId) return AnswerButtonState.wrong;
    return AnswerButtonState.dimmed;
  }
}

// ── 再生ボタン ──

class _PlayButton extends StatelessWidget {
  const _PlayButton({
    required this.isLoading,
    required this.isAnswered,
    required this.onTap,
  });

  final bool isLoading;
  final bool isAnswered;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      onPressed: isLoading ? null : onTap,
      icon: isLoading
          ? const SizedBox.square(
              dimension: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const Icon(Icons.volume_up_rounded),
      label: Text(isLoading ? '読み込み中...' : '鳴き声を再生'),
    );
  }
}

// ── タイプバッジ ──

class _TypeChips extends StatelessWidget {
  const _TypeChips({required this.types});
  final List<String> types;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      children: types
          .map(
            (t) => Chip(
              label: Text(t, style: const TextStyle(fontSize: 12)),
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          )
          .toList(),
    );
  }
}
