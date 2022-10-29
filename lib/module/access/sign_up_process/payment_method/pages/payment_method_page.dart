import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/images.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/module/access/sign_up_process/payment_method/widgets/payment_method_widget.dart';
import 'package:masmas_food/theme/themes.dart';
import 'package:masmas_food/widgets/app_bar.dart';
import 'package:masmas_food/widgets/base_scaffold.dart';
import 'package:masmas_food/widgets/button.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

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
              const XAppbar(
                  title: 'Payment Method',
                  subTitle:
                      'This data will be displayed in your account profile for security'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 20, 14, 60),
                  child: Column(
                    children: [
                      PaymentMethodWidget(
                          asset: context.isDarkMode
                              ? XImages.payPalDark
                              : XImages.payPal),
                      const SizedBox(height: 17),
                      PaymentMethodWidget(
                          asset: context.isDarkMode
                              ? XImages.visaDark
                              : XImages.visa),
                      const SizedBox(height: 17),
                      PaymentMethodWidget(
                          asset: context.isDarkMode
                              ? XImages.paynoneerDark
                              : XImages.paynoneer),
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
}
