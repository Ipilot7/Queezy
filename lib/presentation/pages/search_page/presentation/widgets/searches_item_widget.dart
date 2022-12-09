import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';

class SearchesItemWidget extends StatelessWidget {
  const SearchesItemWidget(
  {super.key, required this.image,
  required this.quizCount,
  required this.categoryName,
  required this.title});

  final String? image;
  final int? quizCount;
  final String categoryName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.fromLTRB(8.w, 8.h, 16.w, 8.h),
      decoration: BoxDecoration(
          color: AppColors.metalColor.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(width: 2, color: AppColors.metalColor[10]!)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.asset(image ?? Assets.images.defImage),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: AutoSizeText(
                    title,
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.body16w5
                        .copyWith(color: AppColors.textColor),
                  ),
                ),
                Text(
                  '$categoryName • $quizCount Quizzes',
                  style: AppTextStyles.body12w4
                      .copyWith(color: AppColors.metalColor[70]),
                ),
              ],
            ),
          ),
          const Spacer(),
          SvgPicture.asset(Assets.icons.arrowRightIcon)
        ],
      ),
    );
  }
}
