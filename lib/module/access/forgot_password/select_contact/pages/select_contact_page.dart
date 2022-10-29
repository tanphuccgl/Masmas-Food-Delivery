import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/module/access/forgot_password/select_contact/widgets/contact_widget.dart';
import 'package:masmas_food/widgets/app_bar.dart';
import 'package:masmas_food/widgets/base_scaffold.dart';
import 'package:masmas_food/widgets/button.dart';

class SelectContactPage extends StatelessWidget {
  const SelectContactPage({Key? key}) : super(key: key);

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
                  title: 'Forgot password?',
                  subTitle:
                      'Select which contact details should we use to reset your password'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 20, 14, 60),
                  child: Column(
                    children: [
                      const ContactWidget(
                          value: '123312334235', viaMethod: ViaMethod.sms),
                      const SizedBox(height: 20),
                      const ContactWidget(
                          value: 'fjhasdkfhkasdjf@gmail.com',
                          viaMethod: ViaMethod.email),
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
