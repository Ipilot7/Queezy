
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';
import 'package:queezy/presentation/pages/profile_page/widget/about_quizzes.dart';

class TotalQueezWidget extends StatelessWidget {
  const TotalQueezWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 430.h,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.statsCl,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Container(
                width: 92.w,
                height: 34.h,
                decoration: BoxDecoration(
                    color: AppColors.metalColor.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Monthly',
                      style: AppTextStyles.body12w5,
                    ),
                    const Icon(Icons.chevron_right)
                  ],
                ),
              ),
            ],
          ),
          //You have played a total 24 quizzes
          Padding(
            padding: EdgeInsets.only(top: 24.h, bottom: 16.h),
            child: RichText(
              text: TextSpan(
                text: 'You have played a total \n',
                style: AppTextStyles.body20w5,
                children: [
                  TextSpan(
                    text: '24 quizzes',
                    style: AppTextStyles.body20w5.copyWith(
                        color: AppColors.primaryColor),
                  ),
                  TextSpan(
                      text: 'this month!',
                      style: AppTextStyles.body20w5),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutQuizzesWidget(
                mark: '5',
                desc: 'Quiz Created',
                svgSrc: Assets.icons.pencil,
                color: AppColors.metalColor.white,
              ),
              AboutQuizzesWidget(
                mark: '21',
                desc: 'Quiz Won',
                svgSrc: Assets.icons.metal,
                color: AppColors.primaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
