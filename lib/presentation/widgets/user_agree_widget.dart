import 'package:flutter/material.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';

class UserAgreeWidget extends StatelessWidget {
  const UserAgreeWidget({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: 'By continuing, you agree to the ',
                style: AppTextStyles.body14w4
                    .copyWith(color: AppColors.metalColor.grey2)),
            TextSpan(
                text: 'Terms of Services ',
                style: AppTextStyles.body14w5
                    .copyWith(color: AppColors.metalColor.grey1)),
            TextSpan(
                text: '\n& ',
                style: AppTextStyles.body14w4
                    .copyWith(color: AppColors.metalColor.grey2)),
            TextSpan(
                text: 'Privacy Policy.',
                style: AppTextStyles.body14w5
                    .copyWith(color: AppColors.metalColor.grey1))
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}