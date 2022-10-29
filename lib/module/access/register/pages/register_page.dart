import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/images.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/module/access/register/widgets/check_title.dart';
import 'package:masmas_food/module/access/widgets/text_underline.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';
import 'package:masmas_food/widgets/base_scaffold.dart';
import 'package:masmas_food/widgets/button.dart';
import 'package:masmas_food/widgets/input.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        isRightCorner: false,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 47, bottom: 21, left: 25, right: 25),
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
                  'Sign Up For Free',
                  style: XStyles.title.copyWith(
                      fontSize: 20,
                      color: context.isDarkMode
                          ? XColors.white
                          : XColors.richBlack),
                ),
                const SizedBox(height: 40),
                XInput(
                    value: '',
                    hint: 'Username',
                    onChanged: (value) {},
                    prefixIconAssest: XImages.profile,
                    errorText: ""),
                XInput(
                    value: '',
                    hint: 'Email',
                    onChanged: (value) {},
                    errorText: "",
                    prefixIconAssest: XImages.email),
                XInput(
                    value: '',
                    hint: 'Password',
                    prefixIconAssest: XImages.lock,
                    obscureText: true,
                    onChanged: (value) {},
                    errorText: ""),
                CheckTitle(
                    onChanged: (value) {},
                    title: 'Keep Me Signed In',
                    value: true),
                const SizedBox(height: 10),
                CheckTitle(
                    onChanged: (value) {},
                    title: 'Email Me About Special Pricing',
                    value: true),
                const SizedBox(height: 43),
                XButton(
                  label: 'Create Account',
                  width: 175,
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                const TextUnderline(
                  title: 'already have an account?',
                ),
              ],
            ),
          ),
        ));
  }
}
