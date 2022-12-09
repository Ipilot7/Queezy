import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';
import 'package:queezy/presentation/widgets/custom_app_bar.dart';
import 'package:queezy/presentation/widgets/custom_button.dart';
import 'package:queezy/presentation/widgets/custom_text_field.dart';
import 'package:queezy/presentation/widgets/or_widget.dart';
import 'package:queezy/presentation/widgets/user_agree_widget.dart';

import '../../../../routes/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool showPassword = false;

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
                title: 'Login',
                isHavePadding: true,
                backIcon: Assets.icons.arrowBack,
                titleTextStyle: AppTextStyles.head24w5
                    .copyWith(color: AppColors.textColor)),
            Flexible(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  CustomButton(
                    text: 'Login with Google',
                    textColor: AppColors.metalColor.black,
                    bgColor: AppColors.metalColor.white,
                    onPressed: () {},
                    icon: Assets.icons.google,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 18.h, bottom: 22.h),
                    child: CustomButton(
                      text: 'Login with Facebook',
                      textColor: AppColors.metalColor.white,
                      bgColor: AppColors.blue,
                      onPressed: () {},
                      icon: Assets.icons.facebook,
                    ),
                  ),
                  const ORWidget(),
                  CustomTextField(
                      controller: emailController,
                      labelText: 'Email Address',
                      showPassword: false,
                      hintText: 'Your email address',
                      prefixIcon: Icons.email_outlined),
                  CustomTextField(
                      labelText: 'Password',
                      controller: passwordController,
                      hintText: 'Your password',
                      prefixIcon: Icons.lock_outlined,
                      onTap: _toggleVisibility,
                      showPassword: showPassword,
                      suffixIcon: Icons.visibility),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: CustomButton(
                      text: 'Login',
                      textColor: AppColors.metalColor.white,
                      bgColor: AppColors.primaryColor,
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.viewPage),
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

  _toggleVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }
}

//
