// presentation/widgets/timer_bar.dart

import 'package:flutter/material.dart';

class TimerBar extends StatefulWidget {
  const TimerBar({
    super.key,
    required this.durationSeconds,
    required this.onExpired,
    this.isActive = true,
  });

  final int durationSeconds;
  final VoidCallback onExpired;
  final bool isActive;

  @override
  State<TimerBar> createState() => _TimerBarState();
}

class _TimerBarState extends State<TimerBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.durationSeconds),
    );
    if (widget.isActive) _start();
  }

  void _start() {
    _controller.forward(from: 0).whenComplete(() {
      if (mounted && widget.isActive) widget.onExpired();
    });
  }

  @override
  void didUpdateWidget(TimerBar old) {
    super.didUpdateWidget(old);
    if (!old.isActive && widget.isActive) _start();
    if (!widget.isActive) _controller.stop();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, _) {
        final ratio = 1.0 - _controller.value;
        final color = Color.lerp(cs.error, cs.primary, ratio)!;
        return ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: ratio,
            minHeight: 6,
            backgroundColor: cs.surfaceContainerHighest,
            valueColor: AlwaysStoppedAnimation(color),
          ),
        );
      },
    );
  }
}
