// domain/use_cases/calculate_score_use_case.dart
//
// クイズ結果からスコアを計算する use case。
// 副作用ゼロの純粋関数なので、execute() はすべて同期処理。

import 'package:pokemon_get/features/pokemon/domain/entities/quiz_result.dart';

// ─────────────────────────────────────────────
// スコア設定（調整しやすいよう定数で管理）
// ─────────────────────────────────────────────

class ScoreConfig {
  const ScoreConfig({
    this.correctBase = 10,
    this.speedBonusThresholdSeconds = 3.0,
    this.speedBonus = 5,
    this.comboBonusPerStreak = 2,
    this.perfectBonus = 50,
    this.perfectStreakCount = 10,
  });

  /// 正解の基本点
  final int correctBase;

  /// この秒数以内に正解するとスピードボーナス対象
  final double speedBonusThresholdSeconds;

  /// スピードボーナス点
  final int speedBonus;

  /// コンボ継続数 × この値をボーナス加算
  final int comboBonusPerStreak;

  /// ノーミスボーナス点
  final int perfectBonus;

  /// ノーミスボーナスが発動する連続正解数
  final int perfectStreakCount;
}

// ─────────────────────────────────────────────
// 1問ごとの採点結果
// ─────────────────────────────────────────────

class QuestionScore {
  const QuestionScore({
    required this.base,
    required this.speedBonus,
    required this.comboBonus,
    required this.total,
    required this.comboCount,
  });

  final int base;
  final int speedBonus;
  final int comboBonus;
  final int total;

  /// この問題の時点での連続正解数
  final int comboCount;
}

// ─────────────────────────────────────────────
// セッション全体の集計結果
// ─────────────────────────────────────────────

class SessionScore {
  const SessionScore({
    required this.totalScore,
    required this.correctCount,
    required this.totalCount,
    required this.maxCombo,
    required this.isPerfect,
    required this.perfectBonus,
    required this.questionScores,
  });

  final int totalScore;
  final int correctCount;
  final int totalCount;
  final int maxCombo;
  final bool isPerfect;
  final int perfectBonus;
  final List<QuestionScore> questionScores;

  double get accuracy => totalCount == 0 ? 0.0 : correctCount / totalCount;

  String get accuracyPercent => '${(accuracy * 100).toStringAsFixed(1)}%';
}

// ─────────────────────────────────────────────
// CalculateScoreUseCase
// ─────────────────────────────────────────────

class CalculateScoreUseCase {
  const CalculateScoreUseCase({ScoreConfig? config})
    : _config = config ?? const ScoreConfig();

  final ScoreConfig _config;

  /// セッション全体の結果リストからスコアを計算して返す。
  SessionScore execute(List<QuizResult> results) {
    if (results.isEmpty) {
      return const SessionScore(
        totalScore: 0,
        correctCount: 0,
        totalCount: 0,
        maxCombo: 0,
        isPerfect: false,
        perfectBonus: 0,
        questionScores: [],
      );
    }

    final questionScores = <QuestionScore>[];
    var comboCount = 0;
    var maxCombo = 0;

    for (final result in results) {
      if (!result.isCorrect) {
        comboCount = 0;
        questionScores.add(
          const QuestionScore(
            base: 0,
            speedBonus: 0,
            comboBonus: 0,
            total: 0,
            comboCount: 0,
          ),
        );
        continue;
      }

      comboCount++;
      maxCombo = comboCount > maxCombo ? comboCount : maxCombo;

      final base = _config.correctBase;
      final speed = result.elapsedSeconds <= _config.speedBonusThresholdSeconds
          ? _config.speedBonus
          : 0;
      final combo = (comboCount - 1) * _config.comboBonusPerStreak;
      // comboCount - 1 とすることで 1問目はコンボボーナスなし、
      // 2問連続から +2、3問連続から +4 と段階的に加算される

      questionScores.add(
        QuestionScore(
          base: base,
          speedBonus: speed,
          comboBonus: combo,
          total: base + speed + combo,
          comboCount: comboCount,
        ),
      );
    }

    final correctCount = results.where((r) => r.isCorrect).length;
    final isPerfect =
        correctCount == results.length &&
        results.length >= _config.perfectStreakCount;
    final perfectBonus = isPerfect ? _config.perfectBonus : 0;

    final totalScore =
        questionScores.fold(0, (sum, q) => sum + q.total) + perfectBonus;

    return SessionScore(
      totalScore: totalScore,
      correctCount: correctCount,
      totalCount: results.length,
      maxCombo: maxCombo,
      isPerfect: isPerfect,
      perfectBonus: perfectBonus,
      questionScores: questionScores,
    );
  }

  /// 1問だけ採点したいとき（リアルタイムスコア表示用）。
  QuestionScore executeSingle({
    required QuizResult result,
    required int currentComboCount,
  }) {
    if (!result.isCorrect) {
      return const QuestionScore(
        base: 0,
        speedBonus: 0,
        comboBonus: 0,
        total: 0,
        comboCount: 0,
      );
    }

    final newCombo = currentComboCount + 1;
    final base = _config.correctBase;
    final speed = result.elapsedSeconds <= _config.speedBonusThresholdSeconds
        ? _config.speedBonus
        : 0;
    final combo = (newCombo - 1) * _config.comboBonusPerStreak;

    return QuestionScore(
      base: base,
      speedBonus: speed,
      comboBonus: combo,
      total: base + speed + combo,
      comboCount: newCombo,
    );
  }
}
