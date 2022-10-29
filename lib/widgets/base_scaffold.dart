import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/images.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/theme/themes.dart';

class BaseScaffold extends StatelessWidget {
  // Background has image in right corner
  final bool isRightCorner;
  final Widget child;
  const BaseScaffold({Key? key, this.isRightCorner = true, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: XScreens.width,
        height: XScreens.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: context.isDarkMode == false
                ? AssetImage(isRightCorner
                    ? XImages.backgroundLight1
                    : XImages.backgroundLight2)
                : AssetImage(isRightCorner
                    ? XImages.backgroundDark1
                    : XImages.backgroundDark2),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    );
  }
}
