import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/config/constants/app_colors.dart';
import '/config/constants/app_text_styles.dart';
import '/config/constants/assets.dart';
import '/presentation/widgets/custom_button.dart';
import '/presentation/widgets/custom_text_field.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(Assets.icons.arrowBack)),
                    Text(
                      'Login',
                      style: AppTextStyles.head24w5,
                    ),
                    Container()
                  ],
                ),
              ),
              CustomButton(
                text: 'Login with Google',
                textcolor: AppColors.metalColor.black,
                bgColor: AppColors.metalColor.white,
                onPressed: () {},
                icon: Assets.icons.google,
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 24.h),
                child: CustomButton(
                  text: 'Login with Facebook',
                  textcolor: AppColors.metalColor.white,
                  bgColor: AppColors.blue,
                  onPressed: () {},
                  icon: Assets.icons.facebook,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 135.w,
                    child: Divider(
                      thickness: 1,
                      height: 10,
                      color: AppColors.metalColor.grey4,
                    ),
                  ),
                  Text(
                    'OR',
                    style: AppTextStyles.body16w4
                        .copyWith(color: AppColors.metalColor.grey2),
                  ),
                  SizedBox(
                    width: 135.w,
                    child: Divider(
                      thickness: 1,
                      height: 10,
                      color: AppColors.metalColor.grey4,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.h, bottom: 8.h),
                child: Text(
                  'Email Address',
                  style: AppTextStyles.body14w4
                      .copyWith(color: AppColors.metalColor.black),
                ),
              ),
              CustomTextField(
                  controller: emailController,
                  labelText: 'Your email address',
                  prefixIcon: Icons.email_outlined),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 8.h),
                child: Text(
                  'Password',
                  style: AppTextStyles.body14w4
                      .copyWith(color: AppColors.metalColor.black),
                ),
              ),
              CustomTextField(
                  controller: passwordController,
                  labelText: 'Your password',
                  prefixIcon: Icons.lock_outlined,
                  onTap: _togglevisibility(),
                  showPassword: showPassword,
                  suffixIcon: Icons.visibility),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: CustomButton(
                    text: 'Login',
                    textcolor: AppColors.metalColor.white,
                    bgColor: AppColors.primaryColor,
                    onPressed: () {}),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'By continuing, you agree to the ',
                          style: AppTextStyles.body14w4),
                      TextSpan(
                          text: 'Terms of Services ',
                          style: AppTextStyles.body14w5),
                      TextSpan(text: '\n& ', style: AppTextStyles.body14w4),
                      TextSpan(
                          text: 'Privacy Policy.',
                          style: AppTextStyles.body14w5)
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _togglevisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }
}
//    
