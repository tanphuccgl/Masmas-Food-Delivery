import 'package:flutter/material.dart';
import 'package:masmas_food/route/coordinator.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/themes.dart';

class UIHelper {
  static boderInput(BuildContext context) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: XCoordinator.context.isDarkMode
            ? BorderSide.none
            : const BorderSide(width: 1, color: XColors.cultured),
      );
}
