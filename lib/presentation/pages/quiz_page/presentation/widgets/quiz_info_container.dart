import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/constants/app_colors.dart';
import '../../../../../config/constants/app_text_styles.dart';
import '../../../../../config/constants/assets.dart';

class quizInfoContainer extends StatelessWidget {
  const quizInfoContainer({
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
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(Assets.images.questionMark),
              Text(
                '10 questions',
                style: AppTextStyles.body14w7,
              ),
              SizedBox(
                width: 16,
                child: Image.asset(Assets.images.divider),
              ),
              Image.asset(Assets.images.quizPart),
              Text(
                '+100 points',
                style: AppTextStyles.body14w7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
