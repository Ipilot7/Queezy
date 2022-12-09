import 'dart:async';

import 'package:flutter/material.dart';
import 'package:queezy/presentation/routes/routes.dart';

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
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.onBoardingPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor.primary,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.images.splashBack),
                fit: BoxFit.cover)),
        child: Center(
          child: Image.asset(
            Assets.images.appLogo,
            height: 166,
            width: 124,
          ),
        ),
      ),
    );
  }
}
