import 'package:flutter/material.dart';
import 'package:masmas_food/widgets/base_success.dart';

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseSuccess(
      labelBtn: 'Try Order',
      onPressed: () {},
      subTitle: 'Your Profile Is Ready To Use',
    );
  }
}
