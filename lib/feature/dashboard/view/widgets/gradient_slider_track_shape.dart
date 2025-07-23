import 'package:flutter/material.dart';

class GradientSliderTrackShape extends SliderTrackShape {
  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    Offset? secondaryOffset,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final Rect track = Rect.fromLTWH(
      offset.dx,
      thumbCenter.dy - 5,
      parentBox.size.width,
      10,
    );

    final Gradient gradient = LinearGradient(
      colors: [Colors.green, Colors.yellow, Colors.orange, Colors.red],
    );

    final Paint paint = Paint()..shader = gradient.createShader(track);

    context.canvas.drawRRect(
      RRect.fromRectAndRadius(track, Radius.circular(5)),
      paint,
    );
  }

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = 10;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
