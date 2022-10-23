// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../module/onboarding/pages/onboarding_page.dart' as _i1;
import '../module/onboarding/widgets/base_onboarding.dart' as _i2;

class XRouter extends _i3.RootStackRouter {
  XRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OnboardingPage(),
      );
    },
    OnboardingTab.name: (routeData) {
      final args = routeData.argsAs<OnboardingTabArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.BaseOnboarding(
          key: args.key,
          tabOnboarding: args.tabOnboarding,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          OnboardingRoute.name,
          path: '/',
          children: [
            _i3.RouteConfig(
              OnboardingTab.name,
              path: 'onboarding',
              parent: OnboardingRoute.name,
            )
          ],
        ),
        _i3.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.OnboardingPage]
class OnboardingRoute extends _i3.PageRouteInfo<void> {
  const OnboardingRoute({List<_i3.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i2.BaseOnboarding]
class OnboardingTab extends _i3.PageRouteInfo<OnboardingTabArgs> {
  OnboardingTab({
    _i4.Key? key,
    required _i2.TabOnboarding tabOnboarding,
  }) : super(
          OnboardingTab.name,
          path: 'onboarding',
          args: OnboardingTabArgs(
            key: key,
            tabOnboarding: tabOnboarding,
          ),
        );

  static const String name = 'OnboardingTab';
}

class OnboardingTabArgs {
  const OnboardingTabArgs({
    this.key,
    required this.tabOnboarding,
  });

  final _i4.Key? key;

  final _i2.TabOnboarding tabOnboarding;

  @override
  String toString() {
    return 'OnboardingTabArgs{key: $key, tabOnboarding: $tabOnboarding}';
  }
}
