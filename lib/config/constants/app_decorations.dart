import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

abstract class AppDecorations {
  // static BoxDecoration defDecor = BoxDecoration(
  //   borderRadius: BorderRadius.circular(10),
  //   color: AppColors.metalColor.shade10,
  // );

  static ButtonStyle buttonStyle({
    double? borderRadius,
    Color? bgColor,
    BorderSide? border,
  }) {
    return ElevatedButton.styleFrom(
      shadowColor: Colors.transparent,
      fixedSize: Size.fromHeight(56.h),
      elevation: 0,
      backgroundColor: bgColor ?? AppColors.primaryColor.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 20.r),
      ),
    );
  }
}
