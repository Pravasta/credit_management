import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_credit_management/core/theme/app_color.dart';
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
      size: Size(300, 300),
      child: SizedBox(
        width: 300,
        height: 350,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "CREDIT SCORE",
                style: appTextTheme(
                  context,
                ).bodyMedium!.copyWith(color: Color(0xffEF5A6F)),
              ),
              Text(
                displayText,
                style: TextStyle(
                  fontSize: 38,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Good',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xffEF5A6F),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Last update 27 January 2025',
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9299B5),
                ),
              ),
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
          ..color = Color(0xffE8E8E8)
          ..strokeWidth = 22
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;

    final Paint fgPaint =
        Paint()
          ..color = AppColor.primary[500]!
          ..strokeWidth = 22
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 1.8);
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
