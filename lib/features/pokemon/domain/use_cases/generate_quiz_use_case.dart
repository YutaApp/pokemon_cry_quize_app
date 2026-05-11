// domain/use_cases/generate_quiz_use_case.dart

import 'dart:math';

import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_generation.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/quiz_question.dart';
import 'package:pokemon_get/features/pokemon/domain/repositories/i_pokemon_repository.dart';

class GenerateQuizConfig {
  const GenerateQuizConfig({
    this.totalQuestions = 10,
    this.choiceCount = 4,
    this.generation = PokemonGeneration.gen1,
  });

  final int totalQuestions;
  final int choiceCount;
  final PokemonGeneration generation;
}

class GenerateQuizUseCase {
  GenerateQuizUseCase({required IPokemonRepository repository, Random? random})
    : _repository = repository,
      _random = random ?? Random();

  final IPokemonRepository _repository;
  final Random _random;

  Future<List<QuizQuestion>> execute(GenerateQuizConfig config) async {
    final master = await _repository.fetchByGeneration(config.generation);

    if (master.length < config.choiceCount) {
      throw StateError('ポケモンが${config.choiceCount}体未満です');
    }

    final shuffled = [...master]..shuffle(_random);
    final answers = shuffled.take(config.totalQuestions).toList();
    final pool = shuffled.skip(config.totalQuestions).toList();

    return answers.map((answer) {
      final distractors = ([...pool]..shuffle(_random))
          .where((p) => p.id != answer.id)
          .take(config.choiceCount - 1)
          .toList();

      return QuizQuestion(
        answer: answer,
        choices: [answer, ...distractors]..shuffle(_random),
      );
    }).toList();
  }
}
