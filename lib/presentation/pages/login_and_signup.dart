import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';
import 'package:queezy/presentation/routes/routes.dart';
import 'package:queezy/presentation/widgets/custom_button.dart';

class LoginAndSignUpPage extends StatefulWidget {
  const LoginAndSignUpPage({super.key});

  @override
  State<LoginAndSignUpPage> createState() => _LoginAndSignUpPageState();
}

class _LoginAndSignUpPageState extends State<LoginAndSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 56.h, left: -170.w, child: Image.asset(Assets.images.o)),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Image.asset(Assets.images.logo,
                        height: 56.h, width: 56.w),
                  ),
                  Text(
                    'Queezy',
                    style: AppTextStyles.head22w7,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, bottom: 16.h),
                    child: Image.asset(Assets.images.peoples2),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: 340.w,
                    decoration: BoxDecoration(
                        color: AppColors.metalColor.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Text(
                        'Login or Sign Up',
                        style: AppTextStyles.head24w5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Login or create an account to take quiz,\n take part in challenge, and more.',
                          style: AppTextStyles.body16w4
                              .copyWith(color: AppColors.metalColor.grey2),
                        ),
                      ),
                      CustomButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.login);
                          },
                          width: 311,
                          bgColor: AppColors.primaryColor,
                          text: 'Login',
                          textcolor: AppColors.metalColor.white),
                      Padding(
                        padding: EdgeInsets.only(top: 16.h, bottom: 24.h),
                        child: CustomButton(
                            onPressed: () =>Navigator.pushNamed(context, Routes.singUp),
                            width: 311,
                            bgColor: AppColors.metalColor.grey4,
                            text: 'Create an account',
                            textcolor: AppColors.primaryColor),
                      ),
                      Text(
                        'Later',
                        style: AppTextStyles.body16w5
                            .copyWith(color: AppColors.metalColor.grey2),
                      ),
                      SizedBox(height: 16.h)
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
