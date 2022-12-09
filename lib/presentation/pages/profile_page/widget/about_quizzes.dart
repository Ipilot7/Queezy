import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';

class AboutQuizzesWidget extends StatelessWidget {
  const AboutQuizzesWidget({
    Key? key,
    required this.mark,
    required this.desc,
    required this.svgSrc,
    required this.color,
  }) : super(key: key);
  final String mark;
  final String desc;
  final String svgSrc;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      height: 96.h,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(right: 0, child: SvgPicture.asset(svgSrc)),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(mark,
                    style: color == AppColors.primaryColor
                        ? AppTextStyles.head32w7
                            .copyWith(color: AppColors.metalColor.white)
                        : AppTextStyles.head32w7),
                Text(
                  desc,
                  style: color == AppColors.primaryColor
                      ? AppTextStyles.body14w4
                          .copyWith(color: AppColors.metalColor.white)
                      : AppTextStyles.body14w4
                          .copyWith(color: AppColors.metalColor.black),
                )
              ]),
        ],
      ),
    );
  }
}
