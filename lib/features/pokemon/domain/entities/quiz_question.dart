import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_quiz_item.dart';

part 'quiz_question.freezed.dart';

// ─────────────────────────────────────────────
// クイズ1問分のデータ
// ─────────────────────────────────────────────

@freezed
abstract class QuizQuestion with _$QuizQuestion {
  const factory QuizQuestion({
    /// 正解のポケモン
    required PokemonQuizItem answer,

    /// 4択の選択肢 (シャッフル済み、answer を含む)
    required List<PokemonQuizItem> choices,
  }) = _QuizQuestion;
}
