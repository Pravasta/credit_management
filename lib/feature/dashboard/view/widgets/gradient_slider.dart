import 'dart:developer';

import 'package:flutter/material.dart';

import 'custom_thumb_shape.dart';
import 'gradient_slider_track_shape.dart';

class GradientSlider extends StatefulWidget {
  const GradientSlider({super.key});

  @override
  State<GradientSlider> createState() => _GradientSliderState();
}

class _GradientSliderState extends State<GradientSlider> {
  double _value = 0.25;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 10,
        activeTrackColor: Colors.transparent,
        inactiveTrackColor: Colors.transparent,
        trackShape: GradientSliderTrackShape(),
        thumbShape: CustomThumbShape(),
      ),
      child: Slider(
        min: 0,
        max: 1,
        value: _value,
        onChanged: (val) {
          setState(() {
            log('Slider value changed: $val');
            _value = val;
          });
        },
      ),
    );
  }
}
