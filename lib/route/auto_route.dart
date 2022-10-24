import 'package:auto_route/auto_route.dart';
import 'package:masmas_food/module/access/router/access_route.dart';
import 'package:masmas_food/module/onboarding/pages/onboarding_page.dart';
import 'package:masmas_food/module/onboarding/widgets/base_onboarding.dart';
import 'package:masmas_food/route/route_name.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: OnboardingPage, name: "OnboardingRoute", children: [
      AutoRoute(
          page: BaseOnboarding, path: XRoutes.onboarding, name: "OnboardingTab")
    ]),
    AccessCoordinator.autoRoute,
    RedirectRoute(path: '*', redirectTo: ''),
  ],
)
class $XRouter {}
