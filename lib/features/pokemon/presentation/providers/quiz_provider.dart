// presentation/providers/quiz_provider.dart

import 'dart:async';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_generation.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/quiz_question.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/quiz_result.dart';
import 'package:pokemon_get/features/pokemon/domain/use_cases/calculate_socre_use_case.dart';
import 'package:pokemon_get/features/pokemon/domain/use_cases/generate_quiz_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:pokemon_get/features/pokemon/presentation/providers/providers.dart';

part 'quiz_provider.g.dart';

// ─────────────────────────────────────────────
// クイズセッション設定
// ─────────────────────────────────────────────

class QuizConfig {
  const QuizConfig({
    this.totalQuestions = 10,
    this.choiceCount = 4,
    this.timeLimitSeconds,
    this.generation = PokemonGeneration.gen1,
  });

  final int totalQuestions;
  final int choiceCount;
  final int? timeLimitSeconds;
  final PokemonGeneration generation;
}

// ─────────────────────────────────────────────
// セッション状態
// ─────────────────────────────────────────────

class QuizSession {
  const QuizSession({
    required this.config,
    required this.questions,
    required this.results,
    required this.currentIndex,
    required this.selectedId,
    required this.isAnswered,
    required this.comboCount,
    required this.sessionScore,
  });

  final QuizConfig config;
  final List<QuizQuestion> questions;
  final List<QuizResult> results;
  final int currentIndex;
  final int? selectedId;
  final bool isAnswered;
  final int comboCount;
  final SessionScore sessionScore;

  QuizQuestion get currentQuestion => questions[currentIndex];
  bool get isFinished => currentIndex >= questions.length;
  int get remainingCount => questions.length - currentIndex;

  QuizSession copyWith({
    List<QuizResult>? results,
    int? currentIndex,
    int? selectedId,
    bool clearSelectedId = false,
    bool? isAnswered,
    int? comboCount,
    SessionScore? sessionScore,
  }) => QuizSession(
    config: config,
    questions: questions,
    results: results ?? this.results,
    currentIndex: currentIndex ?? this.currentIndex,
    selectedId: clearSelectedId ? null : (selectedId ?? this.selectedId),
    isAnswered: isAnswered ?? this.isAnswered,
    comboCount: comboCount ?? this.comboCount,
    sessionScore: sessionScore ?? this.sessionScore,
  );
}

// ─────────────────────────────────────────────
// QuizNotifier
// ─────────────────────────────────────────────

@Riverpod(keepAlive: true)
class Quiz extends _$Quiz {
  Timer? _timer;
  DateTime? _questionStartTime;

  @override
  Future<QuizSession?> build() async {
    ref.onDispose(() => _timer?.cancel());
    return null;
  }

  Future<void> startQuiz(QuizConfig config) async {
    _timer?.cancel();
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final questions = await ref
          .read(generateQuizUseCaseProvider)
          .execute(
            GenerateQuizConfig(
              totalQuestions: config.totalQuestions,
              choiceCount: config.choiceCount,
              generation: config.generation,
            ),
          );

      _questionStartTime = DateTime.now();
      _startTimerIfNeeded(config);

      return QuizSession(
        config: config,
        questions: questions,
        results: const [],
        currentIndex: 0,
        selectedId: null,
        isAnswered: false,
        comboCount: 0,
        sessionScore: const CalculateScoreUseCase().execute(const []),
      );
    });
  }

  void selectAnswer(int pokemonId) {
    final session = state.value;
    if (session == null || session.isAnswered || session.isFinished) return;
    _timer?.cancel();

    final elapsed = _elapsed();
    final result = QuizResult(
      question: session.currentQuestion,
      selectedId: pokemonId,
      elapsedSeconds: elapsed,
    );
    _applyResult(session, result);
  }

  void timeout() {
    final session = state.value;
    if (session == null || session.isAnswered || session.isFinished) return;

    final result = QuizResult(
      question: session.currentQuestion,
      elapsedSeconds: (session.config.timeLimitSeconds ?? 0).toDouble(),
    );
    _applyResult(session, result);
  }

  void nextQuestion() {
    final session = state.value;
    if (session == null || !session.isAnswered) return;

    final nextIndex = session.currentIndex + 1;
    if (nextIndex >= session.questions.length) {
      // 全問終了 — isFinished が true になるよう index を進めるだけ
      state = AsyncData(
        session.copyWith(
          currentIndex: nextIndex,
          clearSelectedId: true,
          isAnswered: false,
        ),
      );
      return;
    }

    _questionStartTime = DateTime.now();
    _startTimerIfNeeded(session.config);

    state = AsyncData(
      session.copyWith(
        currentIndex: nextIndex,
        clearSelectedId: true,
        isAnswered: false,
      ),
    );
  }

  Future<void> restart() async {
    final config = state.value?.config ?? const QuizConfig();
    await startQuiz(config);
  }

  // ─── private ───

  void _applyResult(QuizSession session, QuizResult result) {
    final newResults = [...session.results, result];
    final newCombo = result.isCorrect ? session.comboCount + 1 : 0;
    final score = ref.read(calculateScoreUseCaseProvider).execute(newResults);

    state = AsyncData(
      session.copyWith(
        results: newResults,
        selectedId: result.selectedId,
        isAnswered: true,
        comboCount: newCombo,
        sessionScore: score,
      ),
    );
  }

  void _startTimerIfNeeded(QuizConfig config) {
    if (config.timeLimitSeconds == null) return;
    _timer = Timer(Duration(seconds: config.timeLimitSeconds!), timeout);
  }

  double _elapsed() {
    if (_questionStartTime == null) return 0.0;
    return DateTime.now().difference(_questionStartTime!).inMilliseconds /
        1000.0;
  }
}
