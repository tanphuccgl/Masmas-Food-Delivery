import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/widgets/app_bar.dart';
import 'package:masmas_food/widgets/base_scaffold.dart';
import 'package:masmas_food/widgets/button.dart';
import 'package:masmas_food/widgets/input.dart';

class YourBioPage extends StatelessWidget {
  const YourBioPage({Key? key}) : super(key: key);

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
                  title: 'Fill in your bio to get started',
                  subTitle:
                      'This data will be displayed in your account profile for security'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 20, 14, 60),
                  child: Column(
                    children: [
                      XInput(
                          value: '',
                          hint: 'First Name',
                          onChanged: (value) {},
                          errorText: ""),
                      XInput(
                          value: '',
                          hint: 'Last Name',
                          onChanged: (value) {},
                          errorText: ""),
                      XInput(
                          value: '',
                          hint: 'Mobile Number',
                          onChanged: (value) {},
                          errorText: ""),
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
