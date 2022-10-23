import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:masmas_food/module/onboarding/widgets/base_onboarding.dart';
import 'package:masmas_food/route/auto_route.gr.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
        routes: [
          OnboardingTab(tabOnboarding: TabOnboarding.first),
          OnboardingTab(tabOnboarding: TabOnboarding.second),
        ],
        builder: (context, child, _) {
          return Scaffold(
            body: child,
          );
        });
  }
}
