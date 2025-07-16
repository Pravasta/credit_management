import 'package:flutter/material.dart';

List<BoxShadow> getCustomBoxShadow({
  List<Color>? colors,
  List<Offset>? offsets,
  List<double>? blurRadius,
  List<double>? spreadRadius,
  List<BlurStyle>? blurStyles,
}) {
  int length = offsets?.length ?? 0;

  // Pastikan semua list memiliki panjang yang sama
  if (offsets != null && offsets.length != length) {
    throw ArgumentError("Panjang list offsets harus sama dengan colors");
  }
  if (blurRadius != null && blurRadius.length != length) {
    throw ArgumentError("Panjang list blurRadius harus sama dengan colors");
  }
  if (spreadRadius != null && spreadRadius.length != length) {
    throw ArgumentError("Panjang list spreadRadius harus sama dengan colors");
  }
  if (blurStyles != null && blurStyles.length != length) {
    throw ArgumentError("Panjang list blurStyles harus sama dengan colors");
  }

  List<BoxShadow> boxShadows = [];
  for (int i = 0; i < length; i++) {
    boxShadows.add(
      BoxShadow(
        color: colors?[i] ?? Color(0xff222C68).withOpacity(0.1),
        offset: offsets?[i] ?? const Offset(0, 1),
        blurRadius: blurRadius?[i] ?? 1,
        spreadRadius: spreadRadius?[i] ?? 0.0,
        blurStyle: blurStyles?[i] ?? BlurStyle.normal,
      ),
    );
  }

  return boxShadows;
}
