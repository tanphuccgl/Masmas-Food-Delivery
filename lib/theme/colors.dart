import 'package:flutter/material.dart';

class XColors {
  static const white = Color(0xffFFFFFF);

  static const platinum = Color(0xffE5E5E5);
  static const black = Color(0xFF000000);
  static const smokyBlack = Color(0xFF0D0D0D);
  static const richBlack = Color(0xFF181C05);
  static const cultured = Color(0xffF4F4F4);
  static const veryLightBlue = Color(0xff5A6CEA);
  static const blackOlive = Color(0xff3B3B3B);
  static const raisinBlack = Color(0xff252525);
  static const graniteGray = Color(0xff666666);

  static const linear = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[
        Color(0xff53E88B),
        Color(0xff15BE77),
      ]);

  static final Shader shaderLinear = const LinearGradient(
    colors: <Color>[
      Color(0xff53E88B),
      Color(0xff15BE77),
    ],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
}
