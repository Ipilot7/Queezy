import 'package:flutter/material.dart';

import 'package:queezy/presentation/pages/login.dart';
import 'package:queezy/presentation/pages/login_and_signup.dart';
import 'package:queezy/presentation/pages/quiz_page/presentation/pages/quiz_details_page.dart';
import 'package:queezy/presentation/pages/singup.dart';
import 'package:queezy/presentation/pages/view_page.dart';
import 'package:queezy/presentation/pages/onBoarding_page/presentation/pages/onBoarding_page.dart';

import '../pages/quiz_page/presentation/pages/live_quiz.dart';
import '/presentation/pages/onBoarding_page/presentation/pages/splash_page.dart';
import '/presentation/pages/view_page.dart';

class Routes {
  static const homePage = '/homePage';
  static const loginAndSignUp = '/loginAndSignUp';
  static const login = '/login';
  static const singUp = '/singUp';
  static const splashPage = '/splashPage';
  static const onBoardingPage = '/onBoardingPage';
  static const quizDetails = '/quizDetails';
  static const liveQuiz = '/liveQuiz';

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
        case splashPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SplashPage(),
          );
        case onBoardingPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const OnBoardingPage(),
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
        case quizDetails:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const QuizDetailsPage(),
          );
        case liveQuiz:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const LiveQuizPage(),
          );

        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const QuizDetailsPage(),
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
