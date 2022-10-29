import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';
import 'package:masmas_food/widgets/app_bar.dart';
import 'package:masmas_food/widgets/base_scaffold.dart';
import 'package:masmas_food/widgets/button.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({Key? key}) : super(key: key);

  String _slipPhoneNumber(String str) => str.substring(0, 5);
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: XScreens.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              XAppbar(
                  title: 'Enter 4-digit Verification code',
                  subTitle:
                      'Code send to +62${_slipPhoneNumber('123412347654')}**** . This code will expired in 01:30'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 38, 14, 60),
                  child: Column(
                    children: [
                      Container(
                          height: 103,
                          width: XScreens.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: context.isDarkMode
                                  ? XColors.raisinBlack
                                  : XColors.white,
                              boxShadow:
                                  context.isDarkMode ? null : XStyles.shadow),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 27, horizontal: 3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  _codeNumber(context, '1'),
                                  _codeNumber(context, '9'),
                                  _codeNumber(context, '2'),
                                  _codeNumber(context, '3')
                                ],
                              ),
                            ),
                          )),
                      const Spacer(),
                      XButton(label: 'Next', width: 157, onPressed: () {})
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _codeNumber(BuildContext context, String number) => Text(
        number,
        style: XStyles.subTitle.copyWith(
            color: context.isDarkMode ? XColors.white : XColors.richBlack,
            fontSize: 33),
      );
}
