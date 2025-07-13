import 'package:flutter/material.dart';
import 'package:flutter_credit_management/feature/dashboard/view/widgets/progree_bar_widget.dart';

class AnimatedProgressBar extends StatefulWidget {
  const AnimatedProgressBar({
    super.key,
    required this.score,
    required this.maxScore,
  });

  final double score;
  final double maxScore;

  @override
  State<AnimatedProgressBar> createState() => _AnimatedProgressBarState();
}

class _AnimatedProgressBarState extends State<AnimatedProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    final double scorePercentage = (widget.score / widget.maxScore).clamp(
      0.0,
      1.0,
    );

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: scorePercentage,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return ProgreeBarWidget(
          percent: _animation.value,
          displayText: '${(widget.score).toInt()}',
        );
      },
    );
  }
}
