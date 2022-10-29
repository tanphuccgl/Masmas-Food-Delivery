import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/images.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';
import 'package:masmas_food/widgets/app_bar.dart';
import 'package:masmas_food/widgets/base_scaffold.dart';
import 'package:masmas_food/widgets/button.dart';

class UploadPreviewPage extends StatelessWidget {
  const UploadPreviewPage({Key? key}) : super(key: key);

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
                  title: 'Upload Your Photo Profile',
                  subTitle:
                      'This data will be displayed in your account profile for security'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(65, 59, 65, 60),
                  child: Column(
                    children: [
                      Container(
                        height: 238,
                        width: 245,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border:
                                Border.all(color: XColors.silverSand, width: 1),
                            boxShadow:
                                context.isDarkMode ? null : XStyles.shadow),
                        child: Stack(
                          children: [
                            Image.asset(
                              XImages.logoLight,
                              fit: BoxFit.cover,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: IconButton(
                                    onPressed: () {},
                                    iconSize: 25,
                                    icon: const CircleAvatar(
                                      backgroundColor: XColors.gray,
                                      child: Icon(Icons.clear,
                                          color: XColors.white, size: 12.88),
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
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
