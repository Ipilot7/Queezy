import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';
import 'package:queezy/presentation/widgets/custom_button.dart';
import 'package:queezy/presentation/widgets/custom_text_field.dart';

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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    'Sign Up',
                    style: AppTextStyles.head24w5,
                  ),
                  Container()
                ],
              ),
            ),
            Text(
              'Username',
              style: AppTextStyles.body14w4
                  .copyWith(color: AppColors.metalColor.black),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
              child: CustomTextField(
                  controller: userNameController,
                  labelText: 'Your username',
                  prefixIcon: Icons.person_outlined),
            ),
            Text(
              'Email Address',
              style: AppTextStyles.body14w4
                  .copyWith(color: AppColors.metalColor.black),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
              child: CustomTextField(
                  controller: emailController,
                  labelText: 'Your email address',
                  prefixIcon: Icons.email_outlined),
            ),
            Text(
              'Password',
              style: AppTextStyles.body14w4
                  .copyWith(color: AppColors.metalColor.black),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
              child: CustomTextField(
                controller: passwordController,
                labelText: 'Your password',
                prefixIcon: Icons.lock_outlined,
                onTap: _togglevisibility(),
                showPassword: !showPassword,
                suffixIcon: Icons.visibility,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Must be at least 8 characters.',
                  style: AppTextStyles.body14w4,
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
                  onPressed: () {},
                  width: 327,
                  bgColor: AppColors.primaryColor,
                  text: 'Create an account',
                  textcolor: AppColors.metalColor.white),
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
              padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
              child: CustomButton(
                text: 'Sign Up with Google',
                textcolor: AppColors.metalColor.black,
                bgColor: AppColors.metalColor.white,
                onPressed: () {},
                icon: Assets.icons.google,
              ),
            ),
            CustomButton(
              text: 'Sign Up with Facebook',
              textcolor: AppColors.metalColor.white,
              bgColor: AppColors.blue,
              onPressed: () {},
              icon: Assets.icons.facebook,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Already have an account? ',
                          style: AppTextStyles.body16w4),
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
                        text: 'Privacy Policy.', style: AppTextStyles.body14w5)
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
