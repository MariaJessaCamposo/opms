import 'package:flutter/material.dart';
import 'package:opms/constants/styles/palette_color.dart';

class TextBorderStyles {
  static const normalBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.zero,
      borderSide: BorderSide(color: Palettes.kcPurpleMain, width: 0.7));

  static const errorBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.zero,
      borderSide: BorderSide(color: Color(0xFFD32F2F), width: 1));

  static final focusedBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Palettes.kcPurpleMain, width: 2));
}
