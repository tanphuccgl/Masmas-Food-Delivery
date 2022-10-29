import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/images.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';

enum ImageSource { camera, gallery }

extension ImageSourceExt on ImageSource {
  String asset() {
    switch (this) {
      case ImageSource.camera:
        return XImages.camera;
      case ImageSource.gallery:
        return XImages.gallery;

      default:
        return "N/A";
    }
  }

  String name() {
    switch (this) {
      case ImageSource.camera:
        return 'Take Photo';
      case ImageSource.gallery:
        return 'From Gallery';

      default:
        return "N/A";
    }
  }
}

class ImageSourceWidget extends StatelessWidget {
  final ImageSource imageSource;
  const ImageSourceWidget({Key? key, required this.imageSource})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 129,
          width: XScreens.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: context.isDarkMode ? XColors.raisinBlack : XColors.white,
              boxShadow: context.isDarkMode ? null : XStyles.shadow),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imageSource.asset(),
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 9),
                Text(
                  imageSource.name(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: context.isDarkMode ? XColors.white : XColors.black,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
