import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/constants/app_colors.dart';

class LiveQuizProgressBar extends StatelessWidget {
  const LiveQuizProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: SizedBox(
        height: 4.h,
        width: 148.w,
        child: LinearProgressIndicator(
          color: AppColors.metalColor.white,
          backgroundColor: AppColors.primaryColor.accent2,
          value: 0.35,
        ),
      ),
    );
  }
}
