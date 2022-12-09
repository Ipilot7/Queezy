import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/presentation/components/custom_avatar.dart';

import '../../../../../config/constants/assets.dart';

class TopRankUserWidget extends StatelessWidget {
  const TopRankUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top rank of the week',
          style: AppTextStyles.body20w5.copyWith(color: AppColors.textColor),
        ),
        Stack(
          children: [
            Container(
              height: 92.h,
              margin: EdgeInsets.only(top: 20.h),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.primaryColor),
              child: Row(
                children: [
                  Container(
                    height: 24.h,
                    width: 24.h,
                    margin: EdgeInsets.only(right: 12.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.5,
                        color: AppColors.metalColor.white.withOpacity(0.5),
                      ),
                    ),
                    child: Text(
                      '1',
                      style: AppTextStyles.body12w5
                          .copyWith(color: AppColors.metalColor.white),
                    ),
                  ),
                  const CustomAvatarWidget(),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 132.w),
                          child: AutoSizeText(
                            'Brandon Matrovs',
                            maxLines: 1,
                            minFontSize: 10,
                            style: AppTextStyles.body16w5
                                .copyWith(color: AppColors.metalColor.white),
                          )),
                      Container(
                        width: 68.w,
                        margin: EdgeInsets.only(top: 4.h),
                        child: AutoSizeText(
                          '124 points',
                          maxLines: 1,
                          minFontSize: 10,
                          style: AppTextStyles.body14w4
                              .copyWith(color: AppColors.metalColor.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Align(
                alignment: const Alignment(0.9, 0),
                child: Image.asset(Assets.images.medal)),
            Positioned(
                bottom: 0, right: 0, child: Image.asset(Assets.images.linear)),
          ],
        )
      ],
    );
  }
}
