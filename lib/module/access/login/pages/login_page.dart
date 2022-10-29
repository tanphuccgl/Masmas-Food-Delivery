import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/images.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/module/access/login/widgets/button_social.dart';
import 'package:masmas_food/module/access/widgets/text_underline.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';
import 'package:masmas_food/widgets/base_scaffold.dart';
import 'package:masmas_food/widgets/button.dart';
import 'package:masmas_food/widgets/input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        isRightCorner: false,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 47, bottom: 60, left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: XScreens.height * 0.26,
                child: Image.asset(
                    context.isDarkMode ? XImages.logoDark : XImages.logoLight,
                    fit: BoxFit.cover),
              ),
              const SizedBox(height: 20),
              Text(
                'Login To Your Account',
                style: XStyles.title.copyWith(
                    fontSize: 20,
                    color:
                        context.isDarkMode ? XColors.white : XColors.richBlack),
              ),
              const SizedBox(height: 15),
              XInput(
                  value: '',
                  isDarkMode: context.isDarkMode,
                  hint: 'Email',
                  onChanged: (value) {},
                  errorText: ""),
              XInput(
                  value: '',
                  hint: 'Password',
                  isDarkMode: context.isDarkMode,
                  onChanged: (value) {},
                  errorText: ""),
              Text(
                'Or Continue With',
                style: XStyles.title.copyWith(
                    fontSize: 12,
                    color:
                        context.isDarkMode ? XColors.white : XColors.richBlack),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ButtonSocial(socical: AccessSocical.facebook),
                  ButtonSocial(socical: AccessSocical.google)
                ],
              ),
              const TextUnderline(
                title: 'Forgot Your Password?',
              ),
              XButton(
                label: 'Login',
                width: 141,
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
