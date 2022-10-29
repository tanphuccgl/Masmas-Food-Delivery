import 'package:flutter/material.dart';
import 'package:masmas_food/theme/colors.dart';

/// A button that shows a busy indicator in place of title
class XBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const XBackButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 45,
        height: 45,
        child: ElevatedButton(
            onPressed: onPressed ?? () => Navigator.pop(context),
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(
                  XColors.pastelOrange.withOpacity(0.1)),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              )),
            ),
            child: const Icon(
              Icons.arrow_back_ios_sharp,
              size: 17,
              color: XColors.metallicOrange,
            )));
  }
}
