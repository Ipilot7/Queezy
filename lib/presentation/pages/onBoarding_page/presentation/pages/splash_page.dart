import 'dart:async';

import 'package:flutter/material.dart';

import '/config/constants/app_colors.dart';
import '/config/constants/assets.dart';
import 'onBoarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor.primary,
      body: Stack(
        children: [
          Image(
            image: AssetImage(
              Assets.images.splashBack,
            ),
            fit: BoxFit.cover,
          ),
          Center(
            child: Image(
              image: AssetImage(
                Assets.images.appLogo,
              ),
              height: 166,
              width: 124,
            ),
          ),
        ],
      ),
    );
  }
}
