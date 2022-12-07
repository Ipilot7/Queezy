import 'package:flutter/material.dart';
import 'package:queezy/presentation/pages/login.dart';
import 'package:queezy/presentation/pages/login_and_signup.dart';
import 'package:queezy/presentation/pages/singup.dart';
import 'package:queezy/presentation/pages/view_page.dart';

class Routes {
  static const homePage = '/homePage';
  static const loginAndSignUp = '/loginAndSignUp';
  static const login = '/login';
  static const singUp = '/singUp';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case homePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const ViewPage(),
          );
        case loginAndSignUp:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const LoginAndSignUpPage(),
          );
        case login:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const LoginPage(),
          );
          case singUp:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SignUpPage(),
          );
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const ViewPage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ViewPage(),
      );
    }
  }
}
