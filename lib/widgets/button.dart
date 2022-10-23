import 'package:flutter/material.dart';
import 'package:masmas_food/theme/colors.dart';

/// A button that shows a busy indicator in place of title
class XButton extends StatelessWidget {
  final String label;
  final double? width;
  final double height;
  final VoidCallback? onPressed;
  const XButton(
      {Key? key,
      required this.label,
      this.width,
      this.height = 57,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
                textStyle: MaterialStateProperty.all(const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: XColors.white))),
            child: Ink(
              decoration: const BoxDecoration(
                gradient: XColors.linear,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Container(
                width: width,
                height: height,
                alignment: Alignment.center,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                ),
              ),
            )));
  }
}
