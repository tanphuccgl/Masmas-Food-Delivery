import 'package:flutter/material.dart';

import 'colors.dart';

class XStyles {
  static const title = TextStyle(
    fontSize: 22,
    color: XColors.black,
    fontWeight: FontWeight.w700,
  );

  static const subTitle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: XColors.black,
  );

// https://api.flutter.dev/flutter/material/TextTheme-class.html
  static TextTheme get textTheme {
    final textTheme = const TextTheme(
      // input style
      subtitle1: subTitle,
      headline1: title,
      button: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: XColors.white),
    ).apply(
      bodyColor: XColors.black,
      displayColor: XColors.black,
    );
    return textTheme;
  }

  static TextTheme get textThemeDark {
    final textTheme = const TextTheme(
      // input style
      headline1: title,
      subtitle1: subTitle,

      button: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: XColors.white),
    ).apply(
      bodyColor: XColors.white,
      displayColor: XColors.white,
    );
    return textTheme;
  }
}
