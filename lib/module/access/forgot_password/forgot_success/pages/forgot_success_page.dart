import 'package:flutter/material.dart';
import 'package:masmas_food/widgets/base_success.dart';

class ForgotSuccessPage extends StatelessWidget {
  const ForgotSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseSuccess(
      labelBtn: 'Back',
      onPressed: () {},
      subTitle: 'Password reset succesful',
    );
  }
}
