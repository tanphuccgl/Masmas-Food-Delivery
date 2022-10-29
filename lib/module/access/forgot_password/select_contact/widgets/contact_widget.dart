import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/images.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/module/access/forgot_password/select_contact/widgets/dot_indicator.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';

class ContactWidget extends StatelessWidget {
  final ViaMethod viaMethod;
  final String value;
  const ContactWidget({
    Key? key,
    required this.value,
    required this.viaMethod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 105,
          width: XScreens.width,
          padding: const EdgeInsets.only(left: 26),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: context.isDarkMode ? XColors.raisinBlack : XColors.white,
              boxShadow: context.isDarkMode ? null : XStyles.shadow),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                viaMethod.asset(),
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Via ${viaMethod.name()}:',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: XColors.oldSilver,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const DotsIndicator(),
                      const SizedBox(width: 10),
                      viaMethod == ViaMethod.sms
                          ? const DotsIndicator()
                          : const SizedBox.shrink(),
                      viaMethod == ViaMethod.sms
                          ? const SizedBox(width: 10)
                          : const SizedBox.shrink(),
                      Text(
                        viaMethod.showText(value),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: context.isDarkMode
                              ? XColors.white
                              : XColors.richBlack,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}

enum ViaMethod { sms, email }

extension ImageSourceExt on ViaMethod {
  String asset() {
    switch (this) {
      case ViaMethod.sms:
        return XImages.message;
      case ViaMethod.email:
        return XImages.email2;

      default:
        return "N/A";
    }
  }

  String name() {
    switch (this) {
      case ViaMethod.sms:
        return 'sms';
      case ViaMethod.email:
        return 'email';

      default:
        return "N/A";
    }
  }

  String showText(String str) {
    switch (this) {
      case ViaMethod.sms:
        int index = str.indexOf(str[str.length - 4]);
        final value = str.substring(index, str.length);

        return value;
      case ViaMethod.email:
        int index = str.indexOf("@");
        final value = str.substring(index, str.length);

        return value;

      default:
        return "N/A";
    }
  }
}
