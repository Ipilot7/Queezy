import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/presentation/widgets/custom_button.dart';

import '/config/constants/app_colors.dart';
import '/config/constants/app_text_styles.dart';

class OnBoardingContainer extends StatelessWidget {
  const OnBoardingContainer(
      {super.key,
      required this.next,
      required this.skip,
      required this.title,
      required this.tNext,
      required this.tSkip});

  final VoidCallback next;
  final VoidCallback skip;
  final String title;
  final String tNext;
  final String tSkip;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
      height: 224.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 65.h,
            margin: EdgeInsets.only(bottom: 25.h),
            child: AutoSizeText(
              title,
              maxLines: 2,
              minFontSize: 10,
              textAlign: TextAlign.center,
              style:
                  AppTextStyles.head24w5.copyWith(color: AppColors.textColor),
            ),
          ),
          CustomButton(onPressed: next, text: tNext),
          TextButton(
            onPressed: skip,
            style: TextButton.styleFrom(
              textStyle: AppTextStyles.body16w4,
              foregroundColor: AppColors.metalColor.grey2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
            child: Text(tSkip),
          ),
        ],
      ),
    );
  }
}
