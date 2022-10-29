import 'package:flutter/material.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/themes.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      _buildDot(context),
      _buildDot(context),
      _buildDot(context),
      _buildDot(context),
    ]);
  }

  Widget _buildDot(BuildContext context) => Container(
        width: 8.0,
        height: 8.0,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.isDarkMode ? XColors.white : XColors.richBlack),
      );
}
