// presentation/widgets/answer_button.dart

import 'package:flutter/material.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_quiz_item.dart';

enum AnswerButtonState { idle, correct, wrong, dimmed }

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.pokemon,
    required this.buttonState,
    required this.onTap,
  });

  final PokemonQuizItem pokemon;
  final AnswerButtonState buttonState;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = _resolveColors(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.border, width: 1.5),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: buttonState == AnswerButtonState.idle ? onTap : null,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                _StateIcon(state: buttonState),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    pokemon.nameJa,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: colors.text,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _ButtonColors _resolveColors(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return switch (buttonState) {
      AnswerButtonState.correct => _ButtonColors(
        background: cs.primaryContainer,
        border: cs.primary,
        text: cs.onPrimaryContainer,
      ),
      AnswerButtonState.wrong => _ButtonColors(
        background: cs.errorContainer,
        border: cs.error,
        text: cs.onErrorContainer,
      ),
      AnswerButtonState.dimmed => _ButtonColors(
        background: cs.surfaceContainerHighest.withValues(alpha: 0.4),
        border: cs.outlineVariant.withValues(alpha: 0.4),
        text: cs.onSurfaceVariant.withValues(alpha: 0.4),
      ),
      AnswerButtonState.idle => _ButtonColors(
        background: cs.surface,
        border: cs.outline,
        text: cs.onSurface,
      ),
    };
  }
}

class _ButtonColors {
  const _ButtonColors({
    required this.background,
    required this.border,
    required this.text,
  });
  final Color background;
  final Color border;
  final Color text;
}

class _StateIcon extends StatelessWidget {
  const _StateIcon({required this.state});
  final AnswerButtonState state;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return switch (state) {
      AnswerButtonState.correct => Icon(
        Icons.check_circle_rounded,
        color: cs.primary,
        size: 22,
      ),
      AnswerButtonState.wrong => Icon(
        Icons.cancel_rounded,
        color: cs.error,
        size: 22,
      ),
      _ => Icon(
        Icons.radio_button_unchecked,
        color: cs.outline.withValues(
          alpha: state == AnswerButtonState.dimmed ? 0.4 : 1.0,
        ),
        size: 22,
      ),
    };
  }
}
