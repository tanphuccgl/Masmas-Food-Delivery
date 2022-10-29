import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/module/access/sign_up_process/set_location/widgets/card_location.dart';
import 'package:masmas_food/widgets/app_bar.dart';
import 'package:masmas_food/widgets/base_scaffold.dart';
import 'package:masmas_food/widgets/button.dart';

class SetLocationPage extends StatelessWidget {
  const SetLocationPage({Key? key}) : super(key: key);

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
                  title: 'Set Your Location ',
                  subTitle:
                      'This data will be displayed in your account profile for security'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(17, 20, 16, 60),
                  child: Column(
                    children: [
                      const CardLocation(),
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
