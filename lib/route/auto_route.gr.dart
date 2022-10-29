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
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../module/access/forgot_password/forgot_password_page.dart' as _i6;
import '../module/access/forgot_password/select_contact/pages/select_contact_page.dart'
    as _i8;
import '../module/access/forgot_password/verify_code/pages/verify_code_page.dart'
    as _i9;
import '../module/access/login/pages/login_page.dart' as _i4;
import '../module/access/register/pages/register_page.dart' as _i5;
import '../module/access/router/access_wrapper_page.dart' as _i2;
import '../module/access/sign_up_process/payment_method/pages/payment_method_page.dart'
    as _i11;
import '../module/access/sign_up_process/set_location/pages/set_location_page.dart'
    as _i14;
import '../module/access/sign_up_process/sign_up_process.dart' as _i7;
import '../module/access/sign_up_process/sign_up_success/pages/sign_up_success_page.dart'
    as _i15;
import '../module/access/sign_up_process/upload_photo/pages/upload_photo_page.dart'
    as _i12;
import '../module/access/sign_up_process/upload_preview/pages/upload_preview_page.dart'
    as _i13;
import '../module/access/sign_up_process/your_bio/pages/your_bio_page.dart'
    as _i10;
import '../module/onboarding/pages/onboarding_page.dart' as _i1;
import '../module/onboarding/widgets/base_onboarding.dart' as _i3;

class XRouter extends _i16.RootStackRouter {
  XRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OnboardingPage(),
      );
    },
    AccessWrapperRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AccessWrapperPage(),
      );
    },
    OnboardingTab.name: (routeData) {
      final args = routeData.argsAs<OnboardingTabArgs>();
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.BaseOnboarding(
          key: args.key,
          tabOnboarding: args.tabOnboarding,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.RegisterPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ForgotPasswordPage(),
      );
    },
    SignUpProcessRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpProcessPage(),
      );
    },
    SelectContactRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SelectContactPage(),
      );
    },
    VerifyCodeRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.VerifyCodePage(),
      );
    },
    YourBioRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.YourBioPage(),
      );
    },
    PaymentMethodRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.PaymentMethodPage(),
      );
    },
    UploadPhotoRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.UploadPhotoPage(),
      );
    },
    UploadPreviewRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.UploadPreviewPage(),
      );
    },
    SetLocationRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.SetLocationPage(),
      );
    },
    SignUpSuccessRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.SignUpSuccessPage(),
      );
    },
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'access',
          fullMatch: true,
        ),
        _i16.RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-page',
          children: [
            _i16.RouteConfig(
              OnboardingTab.name,
              path: 'onboarding',
              parent: OnboardingRoute.name,
            )
          ],
        ),
        _i16.RouteConfig(
          AccessWrapperRoute.name,
          path: 'access',
          children: [
            _i16.RouteConfig(
              '#redirect',
              path: '',
              parent: AccessWrapperRoute.name,
              redirectTo: 'forgot-password',
              fullMatch: true,
            ),
            _i16.RouteConfig(
              LoginRoute.name,
              path: 'login',
              parent: AccessWrapperRoute.name,
            ),
            _i16.RouteConfig(
              RegisterRoute.name,
              path: 'register',
              parent: AccessWrapperRoute.name,
            ),
            _i16.RouteConfig(
              ForgotPasswordRoute.name,
              path: 'forgot-password',
              parent: AccessWrapperRoute.name,
              children: [
                _i16.RouteConfig(
                  '#redirect',
                  path: '',
                  parent: ForgotPasswordRoute.name,
                  redirectTo: 'verify-code',
                  fullMatch: true,
                ),
                _i16.RouteConfig(
                  SelectContactRoute.name,
                  path: 'select-contact',
                  parent: ForgotPasswordRoute.name,
                ),
                _i16.RouteConfig(
                  VerifyCodeRoute.name,
                  path: 'verify-code',
                  parent: ForgotPasswordRoute.name,
                ),
              ],
            ),
            _i16.RouteConfig(
              SignUpProcessRoute.name,
              path: 'sign-up-process',
              parent: AccessWrapperRoute.name,
              children: [
                _i16.RouteConfig(
                  '#redirect',
                  path: '',
                  parent: SignUpProcessRoute.name,
                  redirectTo: 'sign-up-successs',
                  fullMatch: true,
                ),
                _i16.RouteConfig(
                  YourBioRoute.name,
                  path: 'your-bio',
                  parent: SignUpProcessRoute.name,
                ),
                _i16.RouteConfig(
                  PaymentMethodRoute.name,
                  path: 'payment-method',
                  parent: SignUpProcessRoute.name,
                ),
                _i16.RouteConfig(
                  UploadPhotoRoute.name,
                  path: 'upload-photo',
                  parent: SignUpProcessRoute.name,
                ),
                _i16.RouteConfig(
                  UploadPreviewRoute.name,
                  path: 'upload-preview',
                  parent: SignUpProcessRoute.name,
                ),
                _i16.RouteConfig(
                  SetLocationRoute.name,
                  path: 'set-location',
                  parent: SignUpProcessRoute.name,
                ),
                _i16.RouteConfig(
                  SignUpSuccessRoute.name,
                  path: 'sign-up-successs',
                  parent: SignUpProcessRoute.name,
                ),
              ],
            ),
            _i16.RouteConfig(
              '*#redirect',
              path: '*',
              parent: AccessWrapperRoute.name,
              redirectTo: '',
              fullMatch: true,
            ),
          ],
        ),
        _i16.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.OnboardingPage]
class OnboardingRoute extends _i16.PageRouteInfo<void> {
  const OnboardingRoute({List<_i16.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          path: '/onboarding-page',
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i2.AccessWrapperPage]
class AccessWrapperRoute extends _i16.PageRouteInfo<void> {
  const AccessWrapperRoute({List<_i16.PageRouteInfo>? children})
      : super(
          AccessWrapperRoute.name,
          path: 'access',
          initialChildren: children,
        );

  static const String name = 'AccessWrapperRoute';
}

/// generated route for
/// [_i3.BaseOnboarding]
class OnboardingTab extends _i16.PageRouteInfo<OnboardingTabArgs> {
  OnboardingTab({
    _i17.Key? key,
    required _i3.TabOnboarding tabOnboarding,
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

  final _i17.Key? key;

  final _i3.TabOnboarding tabOnboarding;

  @override
  String toString() {
    return 'OnboardingTabArgs{key: $key, tabOnboarding: $tabOnboarding}';
  }
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.RegisterPage]
class RegisterRoute extends _i16.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: 'register',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i6.ForgotPasswordPage]
class ForgotPasswordRoute extends _i16.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          path: 'forgot-password',
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i7.SignUpProcessPage]
class SignUpProcessRoute extends _i16.PageRouteInfo<void> {
  const SignUpProcessRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SignUpProcessRoute.name,
          path: 'sign-up-process',
          initialChildren: children,
        );

  static const String name = 'SignUpProcessRoute';
}

/// generated route for
/// [_i8.SelectContactPage]
class SelectContactRoute extends _i16.PageRouteInfo<void> {
  const SelectContactRoute()
      : super(
          SelectContactRoute.name,
          path: 'select-contact',
        );

  static const String name = 'SelectContactRoute';
}

/// generated route for
/// [_i9.VerifyCodePage]
class VerifyCodeRoute extends _i16.PageRouteInfo<void> {
  const VerifyCodeRoute()
      : super(
          VerifyCodeRoute.name,
          path: 'verify-code',
        );

  static const String name = 'VerifyCodeRoute';
}

/// generated route for
/// [_i10.YourBioPage]
class YourBioRoute extends _i16.PageRouteInfo<void> {
  const YourBioRoute()
      : super(
          YourBioRoute.name,
          path: 'your-bio',
        );

  static const String name = 'YourBioRoute';
}

/// generated route for
/// [_i11.PaymentMethodPage]
class PaymentMethodRoute extends _i16.PageRouteInfo<void> {
  const PaymentMethodRoute()
      : super(
          PaymentMethodRoute.name,
          path: 'payment-method',
        );

  static const String name = 'PaymentMethodRoute';
}

/// generated route for
/// [_i12.UploadPhotoPage]
class UploadPhotoRoute extends _i16.PageRouteInfo<void> {
  const UploadPhotoRoute()
      : super(
          UploadPhotoRoute.name,
          path: 'upload-photo',
        );

  static const String name = 'UploadPhotoRoute';
}

/// generated route for
/// [_i13.UploadPreviewPage]
class UploadPreviewRoute extends _i16.PageRouteInfo<void> {
  const UploadPreviewRoute()
      : super(
          UploadPreviewRoute.name,
          path: 'upload-preview',
        );

  static const String name = 'UploadPreviewRoute';
}

/// generated route for
/// [_i14.SetLocationPage]
class SetLocationRoute extends _i16.PageRouteInfo<void> {
  const SetLocationRoute()
      : super(
          SetLocationRoute.name,
          path: 'set-location',
        );

  static const String name = 'SetLocationRoute';
}

/// generated route for
/// [_i15.SignUpSuccessPage]
class SignUpSuccessRoute extends _i16.PageRouteInfo<void> {
  const SignUpSuccessRoute()
      : super(
          SignUpSuccessRoute.name,
          path: 'sign-up-successs',
        );

  static const String name = 'SignUpSuccessRoute';
}
