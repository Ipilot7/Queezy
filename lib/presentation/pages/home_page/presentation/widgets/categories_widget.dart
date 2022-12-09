import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: AppTextStyles.body20w5.copyWith(color: AppColors.textColor),
        ),
        Container(
          margin: EdgeInsets.only(top: 16.h),
          padding: EdgeInsets.only(bottom: 80.h),
          height: MediaQuery.of(context).size.height / 1.8,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            primary: false,
            padding: EdgeInsets.only(bottom: 100.h),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                childAspectRatio: 2.5 / 2,
                mainAxisSpacing: 24.h),
            itemCount: 60,
            itemBuilder: (context, index) {
              return const CategoriesItemWidget(
                  backgroundColor: AppColors.pinkLight,
                  title: 'Math',
                  count: 12);
            },
          ),
        )
      ],
    );
  }
}

class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget({
    super.key,
    this.backgroundColor,
    this.title,
    this.image,
    this.count,
  });

  final Color? backgroundColor;
  final String? title;
  final String? image;
  final int? count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.pinkLight,
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 48.h,
            width: 48.w,
            margin: EdgeInsets.only(bottom: 8.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.metalColor.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Image.asset(image ?? Assets.images.medal),
          ),
          Text(
            '$title',
            style: AppTextStyles.body16w5
                .copyWith(color: AppColors.metalColor.white),
          ),
          Text(
            '$count Quizzes',
            style: AppTextStyles.body12w4
                .copyWith(color: AppColors.metalColor.white.withOpacity(0.8)),
          ),
        ],
      ),
    );
  }
}
