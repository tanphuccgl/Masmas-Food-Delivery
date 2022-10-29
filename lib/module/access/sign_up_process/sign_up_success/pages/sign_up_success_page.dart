import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/images.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';
import 'package:masmas_food/widgets/base_scaffold.dart';
import 'package:masmas_food/widgets/button.dart';

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      isRightCorner: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(31, 0, 31, 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              XImages.success,
              width: 172,
              height: 162,
            ),
            const SizedBox(height: 33),
            Text(
              'Congrats!',
              style: XStyles.subTitle.copyWith(
                  fontSize: 30,
                  decorationColor: XColors.veryLightMalachiteGreen,
                  foreground: Paint()..shader = XColors.shaderLinear),
            ),
            const SizedBox(height: 12),
            Text(
              'Your Profile Is Ready To Use',
              style: XStyles.subTitle.copyWith(
                  fontSize: 23,
                  color:
                      context.isDarkMode ? XColors.white : XColors.richBlack),
            ),
            const Spacer(),
            XButton(label: 'Try Order', width: 157, onPressed: () {})
          ],
        ),
      ),
    );
  }
}
