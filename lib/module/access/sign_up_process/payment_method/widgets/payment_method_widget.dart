import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';

class PaymentMethodWidget extends StatelessWidget {
  final String asset;
  const PaymentMethodWidget({Key? key, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 73,
        width: XScreens.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: context.isDarkMode ? XColors.raisinBlack : XColors.white,
            boxShadow: context.isDarkMode ? null : XStyles.shadow),
        child: Center(
          child: Image.asset(
            asset,
            fit: BoxFit.cover,
          ),
        ));
  }
}
