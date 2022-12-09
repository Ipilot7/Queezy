import 'package:auto_size_text/auto_size_text.dart';
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Image.asset(Assets.images.appLogo, width: 75.w),
                ),
                Image.asset(Assets.images.peoples2),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppColors.metalColor.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * .5),
                        child: AutoSizeText(
                          'Login or Sign Up',
                          maxLines: 1,
                          minFontSize: 10,
                          style: AppTextStyles.head24w5.copyWith(
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
                        child: AutoSizeText(
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          'Login or create an account to take quiz,\n take part in challenge, and more.',
                          style: AppTextStyles.body16w4
                              .copyWith(color: AppColors.metalColor.grey2),
                        ),
                      ),
                      CustomButton(
                        text: 'Login',
                        bgColor: AppColors.primaryColor,
                        textColor: AppColors.metalColor.white,
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.login);
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.h, bottom: 8.h),
                        child: CustomButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, Routes.singUp),
                            bgColor: AppColors.metalColor.grey4,
                            text: 'Create an account',
                            textColor: AppColors.primaryColor),
                      ),
                      CustomButton(
                        text: 'Later',
                        textColor: AppColors.metalColor.grey2,
                        bgColor: Colors.transparent,
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
