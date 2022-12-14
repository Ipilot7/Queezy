import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/config/constants/app_text_styles.dart';

class LiveQuizContainer extends StatelessWidget {
  const LiveQuizContainer({
    Key? key,
    required this.bgColor,
    required this.imgIcon,
    required this.text,
  }) : super(key: key);

  final Color? bgColor;
  final String imgIcon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              imgIcon,
              height: 16.h,
              width: 16.w,
            ),
            Text(
              text!,
              style: AppTextStyles.body12w5,
            ),
          ],
        ),
      ),
    );
  }
}
