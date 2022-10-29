import 'package:flutter/material.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';

class CheckTitle extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool?)? onChanged;
  const CheckTitle(
      {Key? key,
      required this.onChanged,
      required this.title,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 22,
          child: Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            checkColor: Colors.white,
            activeColor: XColors.veryLightMalachiteGreen,
            value: value,
            shape: const CircleBorder(),
            onChanged: onChanged,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: XStyles.subTitle.copyWith(
              color: context.isDarkMode ? XColors.white : XColors.richBlack),
        )
      ],
    );
  }
}
