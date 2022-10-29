import 'package:flutter/material.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';

class TextUnderline extends StatelessWidget {
  final String title;
  const TextUnderline({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: XStyles.subTitle.copyWith(
          decoration: TextDecoration.underline,
          decorationThickness: 1,
          decorationColor: XColors.veryLightMalachiteGreen,
          fontWeight: FontWeight.w400,
          foreground: Paint()..shader = XColors.shaderLinear),
    );
  }
}
