import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/presentation/pages/profile_page/profile_page.dart';

import '../../../../../config/constants/app_colors.dart';
import '../../../../../config/constants/app_text_styles.dart';
import '../../../../../config/constants/assets.dart';

class QuizInfoContainer extends StatelessWidget {
  const QuizInfoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Container(
        height: 64.h,
        width: 327.w,
        decoration: BoxDecoration(
          color: AppColors.metalColor.grey5,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(Assets.images.questionMark),
              SizedBox(width: 8.w),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 4),
                child: AutoSizeText(
                  '10 questions',
                  maxLines: 1,
                  minFontSize: 8,
                  style: AppTextStyles.body14w5
                      .copyWith(color: AppColors.textColor),
                ),
              ),
              Padding(
                  padding:EdgeInsets.symmetric(horizontal:  16.w),
                  child: const CustomDividerWidget()),
              Image.asset(Assets.images.quizPart),
              SizedBox(width: 12.w),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 4),
                child: AutoSizeText(
                  '+100 points',
                  maxLines: 1,
                  minFontSize: 8,
                  style: AppTextStyles.body14w5
                      .copyWith(color: AppColors.textColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
