import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_credit_management/main.dart';

class ProgreeBarWidget extends StatelessWidget {
  const ProgreeBarWidget({
    super.key,
    required this.percent,
    required this.displayText,
  });

  final double percent;
  final String displayText;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _SemiCirclePainter(percent: percent, context: context),
      size: const Size(250, 400),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 300,
        height: 400,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(displayText, style: appTextTheme(context).headlineLarge),
              const SizedBox(height: 16),
              Text("credit score", style: appTextTheme(context).bodyMedium),
            ],
          ),
        ),
      ),
    );
  }
}

class _SemiCirclePainter extends CustomPainter {
  final double percent;
  final BuildContext context;

  _SemiCirclePainter({required this.percent, required this.context});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint bgPaint =
        Paint()
          ..color = appColorScheme(context).secondary
          ..strokeWidth = 22
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;

    final Paint fgPaint =
        Paint()
          ..color = appColorScheme(context).primary
          ..strokeWidth = 22
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final total = Rect.fromCircle(center: center, radius: radius);

    const double startAngle = 3 * pi / 4; // 225° (pojok kiri bawah)
    const double sweepAngle = 3 * pi / 2; // 270°

    // Gambar background semi-circle
    canvas.drawArc(total, startAngle, sweepAngle, false, bgPaint);

    // Gambar foreground (progress)
    canvas.drawArc(total, startAngle, sweepAngle * percent, false, fgPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
