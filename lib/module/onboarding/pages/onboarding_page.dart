import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masmas_food/module/onboarding/logic/onboarding_bloc.dart';
import 'package:masmas_food/module/onboarding/widgets/base_onboarding.dart';
import 'package:masmas_food/route/auto_route.gr.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => OnboardingBloc(),
        child: BlocBuilder<OnboardingBloc, OnboardingState>(
          builder: (context, state) {
            return AutoTabsRouter.pageView(
                routes: [
                  OnboardingTab(tabOnboarding: TabOnboarding.first),
                  OnboardingTab(tabOnboarding: TabOnboarding.second),
                ],
                physics: const NeverScrollableScrollPhysics(),
                builder: (context, child, _) {
                  return Scaffold(
                    body: child,
                  );
                });
          },
        ));
  }
}
