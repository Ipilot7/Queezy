import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pie_timer/pie_timer.dart';
import 'package:queezy/presentation/pages/quiz_page/presentation/widgets/pieTimer.dart';

import '../../../../../config/constants/app_colors.dart';
import '../../../../../config/constants/app_text_styles.dart';

class questionCard extends StatelessWidget {
  const questionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        top: 20,
        right: 16,
      ),
      height: 694.h,
      width: 359.w,
      decoration: BoxDecoration(
          color: AppColors.metalColor.white,
          borderRadius: BorderRadius.circular(32)),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PieWidget(),
          Text(
            'QUESTION 3 OF 10                                                               ',
            textAlign: TextAlign.start,
            style: AppTextStyles.body14w5
                .copyWith(color: AppColors.metalColor.grey2),
          ),
          questionList(),
          questionBox(),
          questionBox(),
          questionBox(),
          questionBox(),
        ],
      ),
    );
  }
}

class questionList extends StatelessWidget {
  const questionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
      child: Text(
        'Which player scored the fastest hat-trick in the Premier League?',
        textAlign: TextAlign.start,
        style: AppTextStyles.head24w5,
      ),
    );
  }
}

class questionBox extends StatelessWidget {
  const questionBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      height: 56.h,
      width: 327.w,
      child: RawMaterialButton(
        onPressed: () {},
        focusColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: AppColors.metalColor.grey5, width: 3),
        ),
        child: Text('Robin van Persie',
            textAlign: TextAlign.start, style: AppTextStyles.body16w5),
      ),
    );
  }
}
