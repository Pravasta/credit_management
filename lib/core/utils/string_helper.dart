import 'package:flutter/material.dart';

class StringHelper {
  static String getInitials(String name) {
    final parts = name.trim().split(' ');

    if (parts.isEmpty) return '';

    // Ambil huruf pertama dari 3 kata pertama (maksimal 3 huruf)
    final initials = parts
        .take(3)
        .map((part) => part[0].toUpperCase())
        .join('');
    return initials.length > 3 ? initials.substring(0, 3) : initials;
  }

  static String firstTextToUppercase(
    String value,
    bool? onlyFirst, {
    ValueNotifier<TextEditingValue>? controller,
  }) {
    if (value.isEmpty) return '';

    String newValue;

    if (onlyFirst == true) {
      // Kapitalisasi hanya huruf pertama
      newValue = value[0].toUpperCase() + value.substring(1);
    } else {
      // Kapitalisasi huruf pertama setiap kata
      newValue = value
          .split(' ')
          .map((word) {
            if (word.isEmpty) return '';
            return word[0].toUpperCase() + word.substring(1);
          })
          .join(' ');
    }

    // Update ke controller jika diberikan
    if (controller != null) {
      controller.value = TextEditingValue(
        text: newValue,
        selection: TextSelection.collapsed(offset: newValue.length),
      );
    }

    return newValue;
  }
}
