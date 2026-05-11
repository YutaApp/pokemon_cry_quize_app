import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/quiz_question.dart';

part 'quiz_result.freezed.dart';

// ─────────────────────────────────────────────
// 1問の回答結果
// ─────────────────────────────────────────────

@freezed
abstract class QuizResult with _$QuizResult {
  const factory QuizResult({
    required QuizQuestion question,

    /// ユーザーが選んだポケモンID (タイムアウト時は null)
    int? selectedId,

    /// 回答にかかった秒数
    required double elapsedSeconds,
  }) = _QuizResult;

  const QuizResult._();

  bool get isCorrect => selectedId == question.answer.id;
  bool get isTimeout => selectedId == null;

  /// スピードボーナス: 3秒以内なら +5
  int get speedBonus => (isCorrect && elapsedSeconds <= 3.0) ? 5 : 0;

  /// この問題の獲得点数
  int get score => isCorrect ? 10 + speedBonus : 0;
}
