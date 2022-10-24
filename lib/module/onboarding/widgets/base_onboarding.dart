import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masmas_food/config/constants/images.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/module/onboarding/logic/onboarding_bloc.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';
import 'package:masmas_food/widgets/button.dart';

enum TabOnboarding {
  first,
  second,
}

class BaseOnboarding extends StatelessWidget {
  final TabOnboarding tabOnboarding;

  const BaseOnboarding({Key? key, required this.tabOnboarding})
      : super(key: key);
  bool get isFirstTab => tabOnboarding == TabOnboarding.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 56.83, bottom: 61),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 434,
              child: context.isDarkMode == false
                  ? Image.asset(
                      isFirstTab
                          ? XImages.onBoardingLight1
                          : XImages.onBoardingLight2,
                      fit: BoxFit.cover)
                  : Image.asset(
                      isFirstTab
                          ? XImages.onBoardingDark1
                          : XImages.onBoardingDark2,
                      fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: isFirstTab
                      ? (XScreens.width * 0.2)
                      : (XScreens.width * 0.18)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      isFirstTab
                          ? 'Find your  Comfort Food here'
                          : 'Food Ninja is Where Your Comfort Food Lives',
                      textAlign: TextAlign.center,
                      style: XStyles.title),
                  const SizedBox(height: 20),
                  Text(
                      isFirstTab
                          ? 'Here You Can find a chef or dish for every taste and color. Enjoy!'
                          : 'Enjoy a fast and smooth food delivery at your doorstep',
                      textAlign: TextAlign.center,
                      style: XStyles.subTitle)
                ],
              ),
            ),
            XButton(
              label: 'Next',
              width: 157,
              onPressed: isFirstTab
                  ? () => context.read<OnboardingBloc>().onBtnNext()
                  : () {},
            )
          ],
        ),
      ),
    );
  }
}
