import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:masmas_food/theme/styles.dart';

import 'colors.dart';

extension DarkMode on BuildContext {
  /// is dark mode currently enabled?
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}

class XTheme {
  static var brightness = SchedulerBinding.instance.window.platformBrightness;
  static bool isDarkMode = brightness == Brightness.dark;
  static const String? fontFamily = null;
  static const barOverLayStyle = SystemUiOverlayStyle.light;

  static ThemeData light() => ThemeData(
      scaffoldBackgroundColor: XColors.white,
      fontFamily: "Benton-sans",
      textTheme: XStyles.textTheme,
      primaryTextTheme: XStyles.textTheme);

  static ThemeData dark() => ThemeData(
      scaffoldBackgroundColor: XColors.smokyBlack,
      textTheme: XStyles.textThemeDark,
      primaryTextTheme: XStyles.textThemeDark);
}
