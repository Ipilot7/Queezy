import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.textColor.withOpacity(.16)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SvgPicture.asset(
              Assets.icons.search,
              color: AppColors.metalColor.white,
            ),
          ),
           _SearchTextField(),
        ],
      ),
    );
  }
}

class _SearchTextField extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.38,
      padding: EdgeInsets.only(right: 16.w),
      child: TextField(
        style: AppTextStyles.body16w4.copyWith(color: AppColors.metalColor[30]),
        maxLines: 1,
        cursorWidth: 2,
        onChanged: (value) {},
        cursorColor: AppColors.primaryColor[50],
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
          hintText: 'Quiz, categories',
          hintStyle: AppTextStyles.body16w4.copyWith(
            color: AppColors.greyColor,
          ),
        ),
      ),
    );
  }
}
