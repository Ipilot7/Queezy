import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';
import 'package:queezy/presentation/routes/routes.dart';
import 'package:queezy/presentation/widgets/custom_button.dart';
import 'package:queezy/presentation/widgets/custom_text_field.dart';
import 'package:queezy/presentation/widgets/or_widget.dart';

import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/user_agree_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = false;

  _togglevisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.metalColor.grey5,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBarWidget(
                title: 'Sign Up',
                isHavePadding: true,
                backIcon: Assets.icons.arrowBack,
                titleTextStyle: AppTextStyles.head24w5
                    .copyWith(color: AppColors.textColor)),
            Flexible(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  CustomTextField(
                      controller: userNameController,
                      hintText: 'Your username',
                      labelText: 'Username',
                      prefixIcon: Icons.person_outlined),
                  CustomTextField(
                      labelText: 'Email Address',
                      controller: emailController,
                      hintText: 'Your email address',
                      prefixIcon: Icons.email_outlined),
                  CustomTextField(
                    labelText: 'Password',
                    controller: passwordController,
                    hintText: 'Your password',
                    prefixIcon: Icons.lock_outlined,
                    onTap: _togglevisibility,
                    showPassword: !showPassword,
                    suffixIcon: Icons.visibility,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: AutoSizeText(
                          'Must be at least 8 characters.',
                          maxLines: 1,
                          minFontSize: 10,
                          style: AppTextStyles.body14w4
                              .copyWith(color: AppColors.metalColor.grey2),
                        ),
                      ),
                      Icon(
                        Icons.check,
                        color: AppColors.primaryColor,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.h, bottom: 16.h),
                    child: CustomButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, Routes.viewPage),
                        bgColor: AppColors.primaryColor,
                        text: 'Create Account',
                        textColor: AppColors.metalColor.white),
                  ),
                  const ORWidget(),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
                    child: CustomButton(
                      text: 'Sign Up with Google',
                      textColor: AppColors.metalColor.black,
                      bgColor: AppColors.metalColor.white,
                      onPressed: () {},
                      icon: Assets.icons.google,
                    ),
                  ),
                  CustomButton(
                    text: 'Sign Up with Facebook',
                    textColor: AppColors.metalColor.white,
                    bgColor: AppColors.blue,
                    onPressed: () {},
                    icon: Assets.icons.facebook,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Center(
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, Routes.login),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Already have an account? ',
                                  style: AppTextStyles.body16w4.copyWith(
                                      color: AppColors.metalColor.grey2)),
                              TextSpan(
                                  text: 'Login ',
                                  style: AppTextStyles.body16w5
                                      .copyWith(color: AppColors.primaryColor)),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const UserAgreeWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
