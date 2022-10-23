import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:masmas_food/module/onboarding/widgets/base_onboarding.dart';
import 'package:masmas_food/route/auto_route.gr.dart';

class XCoordinator {
  static XRouter get rootRouter => GetIt.I<XRouter>();

  static BuildContext get context =>
      rootRouter.navigatorKey.currentState!.context;

  static Future<bool> pop<T extends Object?>([T? result]) async {
    return rootRouter.pop(result);
  }

  static void showOnboardingSecond() => rootRouter.push(OnboardingRoute(
      children: [OnboardingTab(tabOnboarding: TabOnboarding.second)]));
}
