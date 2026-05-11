// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Quiz)
final quizProvider = QuizProvider._();

final class QuizProvider extends $AsyncNotifierProvider<Quiz, QuizSession?> {
  QuizProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'quizProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$quizHash();

  @$internal
  @override
  Quiz create() => Quiz();
}

String _$quizHash() => r'd2db6f33fe5f0fcd4935bf37bb7143f6bbfea36b';

abstract class _$Quiz extends $AsyncNotifier<QuizSession?> {
  FutureOr<QuizSession?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<QuizSession?>, QuizSession?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<QuizSession?>, QuizSession?>,
              AsyncValue<QuizSession?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
