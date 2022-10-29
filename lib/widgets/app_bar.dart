import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';
import 'package:masmas_food/widgets/back_button.dart';

class XAppbar extends StatelessWidget {
  final String title;
  final String? subTitle;
  const XAppbar({Key? key, required this.title, this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, top: XScreens.topSafeHeight + 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const XBackButton(),
          const SizedBox(height: 20),
          SizedBox(
            width: 264,
            child: Text(
              title,
              maxLines: 2,
              style: XStyles.title.copyWith(
                  fontSize: 25,
                  color:
                      context.isDarkMode ? XColors.white : XColors.richBlack),
            ),
          ),
          const SizedBox(height: 19),
          subTitle != null
              ? SizedBox(
                  width: 239,
                  child: Text(
                    subTitle!,
                    maxLines: 2,
                    style: XStyles.subTitle.copyWith(
                        color:
                            context.isDarkMode ? XColors.white : XColors.black),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
