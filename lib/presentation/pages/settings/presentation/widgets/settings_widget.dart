import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    Key? key,
    required this.icons,
    required this.name,
    required this.description,
  }) : super(key: key);

  final IconData icons;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.h,
      margin: EdgeInsets.only(top: 16.h),
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.metalColor.grey5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.metalColor.white),
                child: Icon(
                  icons,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(width: 16.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyles.body16w5
                        .copyWith(color: AppColors.metalColor.black),
                  ),
                  Text(
                    description,
                    style: AppTextStyles.body14w4
                        .copyWith(color: AppColors.metalColor.grey2),
                  ),
                ],
              ),
            ],
          ),
          const Icon(Icons.chevron_right_outlined)
        ],
      ),
    );
  }
}
