import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/images.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';

enum AccessSocical { google, facebook }

extension AccessSocicalExt on AccessSocical {
  String asset() {
    switch (this) {
      case AccessSocical.google:
        return XImages.google;
      case AccessSocical.facebook:
        return XImages.facebook;

      default:
        return "N/A";
    }
  }

  String name() {
    switch (this) {
      case AccessSocical.google:
        return "Google";
      case AccessSocical.facebook:
        return "Facebook";

      default:
        return "N/A";
    }
  }
}

class ButtonSocial extends StatelessWidget {
  final AccessSocical socical;
  const ButtonSocial({Key? key, required this.socical}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: 152,
      decoration: BoxDecoration(
          color: context.isDarkMode ? XColors.raisinBlack : XColors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: context.isDarkMode
              ? null
              : Border.all(width: 1.0, color: XColors.cultured),
          boxShadow: context.isDarkMode ? null : XStyles.shadow),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            disabledForegroundColor: XColors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              socical.asset(),
              width: 25,
              height: 25,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 13,
            ),
            Text(
              (socical.name()),
              style: XStyles.button.copyWith(
                  color:
                      context.isDarkMode ? XColors.white : XColors.richBlack),
            )
          ],
        ),
      ),
    );
  }
}
