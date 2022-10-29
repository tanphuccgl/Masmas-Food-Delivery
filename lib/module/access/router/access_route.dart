import 'package:auto_route/auto_route.dart';
import 'package:masmas_food/module/access/login/pages/login_page.dart';
import 'package:masmas_food/module/access/register/pages/register_page.dart';
import 'package:masmas_food/module/access/router/access_wrapper_page.dart';
import 'package:masmas_food/route/route_name.dart';

class AccessRouters {
  static const String login = 'login';
  static const String register = 'register';
}

class AccessCoordinator {
  static const autoRoute = AutoRoute(
      path: XRoutes.access,
      page: AccessWrapperPage,
      initial: true,
      name: 'AccessWrapperRoute',
      children: [
        AutoRoute(
          path: AccessRouters.login,
          page: LoginPage,
          name: "LoginRoute",
        ),
        AutoRoute(
            path: AccessRouters.register,
            page: RegisterPage,
            name: "RegisterRoute",
            initial: true),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);
}
