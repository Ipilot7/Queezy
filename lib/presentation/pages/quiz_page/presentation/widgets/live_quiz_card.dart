import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/presentation/pages/quiz_page/presentation/widgets/pie_timer_widget.dart';

import '../../../../../config/constants/app_colors.dart';
import '../../../../../config/constants/app_text_styles.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, top: 20.h, right: 16.w),
      height: 694.h,
      width: 359.w,
      decoration: BoxDecoration(
          color: AppColors.metalColor.white,
          borderRadius: BorderRadius.circular(32.r)),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PieWidget(),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'QUESTION 3 OF 10',
              textAlign: TextAlign.start,
              style: AppTextStyles.body14w5
                  .copyWith(color: AppColors.metalColor.grey2),
            ),
          ),
          const QuestionList(),
          const QuestionBox(),
          const QuestionBox(),
          const QuestionBox(),
          const QuestionBox(),
        ],
      ),
    );
  }
}

class QuestionList extends StatelessWidget {
  const QuestionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
      child: AutoSizeText(
        'Which player scored the fastest hat-trick in the Premier League?',
        textAlign: TextAlign.start,
        minFontSize: 10,
        style: AppTextStyles.head24w5.copyWith(color: AppColors.textColor),
      ),
    );
  }
}

class QuestionBox extends StatelessWidget {
  const QuestionBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
      height: 56.h,
      width: 327.w,
      child: RawMaterialButton(
        onPressed: () {},
        focusColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
          side: BorderSide(color: AppColors.metalColor.grey5, width: 3),
        ),
        child: Text('Robin van Persie',
            textAlign: TextAlign.start, style: AppTextStyles.body16w5.copyWith(color: AppColors.textColor)),
      ),
    );
  }
}
