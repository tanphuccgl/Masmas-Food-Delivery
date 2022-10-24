import 'package:flutter/material.dart';
import 'package:masmas_food/theme/themes.dart';

import 'colors.dart';

class XStyles {
  static final title = TextStyle(
    fontSize: 22,
    color: XTheme.isDarkMode ? XColors.white : XColors.black,
    fontWeight: FontWeight.w700,
  );

  static final subTitle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: XTheme.isDarkMode ? XColors.white : XColors.black,
  );

// https://api.flutter.dev/flutter/material/TextTheme-class.html
  static TextTheme get textTheme {
    final textTheme = TextTheme(
      // input style
      subtitle1: subTitle,
      headline1: title,
      button: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: XColors.white),
    ).apply(
      bodyColor: XColors.black,
      displayColor: XColors.black,
    );
    return textTheme;
  }

  static TextTheme get textThemeDark {
    final textTheme = TextTheme(
      // input style
      headline1: title,
      subtitle1: subTitle,

      button: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: XColors.white),
    ).apply(
      bodyColor: XColors.white,
      displayColor: XColors.white,
    );
    return textTheme;
  }
}
