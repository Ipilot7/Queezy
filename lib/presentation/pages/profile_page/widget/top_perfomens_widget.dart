
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';

class TopPerfomensWidget extends StatelessWidget {
  TopPerfomensWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 420.h,
      padding:
          EdgeInsets.only(top: 24.h, right: 16.w, left: 16.w, bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.primaryColor,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top performance by\n category',
                    style: AppTextStyles.body20w5
                        .copyWith(color: AppColors.metalColor.white),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.r),
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor.secondary,
                        borderRadius: BorderRadius.circular(12)),
                    child: SvgPicture.asset(
                      Assets.icons.statistics,
                      color: AppColors.metalColor.white,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4,
                    (index) => Container(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            Assets.icons.coma,
                            color: AppColors.avatarColor,
                          ),
                          SizedBox(width: 8.w),
                          Text('Math',
                              style: AppTextStyles.body14w5
                                  .copyWith(color: AppColors.metalColor.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 295.w,
                height: 212.h,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      5,
                      (index) => Text(
                        '${persent[index]}% -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  ',
                        style: AppTextStyles.body14w5
                            .copyWith(color: AppColors.metalColor.white),
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  4,
                  (index) {
                    if (index == 0) {
                      return Container();
                    } else {
                      return RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: '3/10\n',
                          style: AppTextStyles.body14w5
                              .copyWith(color: AppColors.metalColor.white),
                          children: [
                            TextSpan(
                              text: 'Questions\nAnswered',
                              style: AppTextStyles.body12w4
                                  .copyWith(color: AppColors.metalColor.grey3),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
          Positioned(
            left: 10.w,
            top: 141.h,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(4, (index) {
                  if (index == 0) {
                    return Container();
                  } else {
                    return Container(
                      margin: EdgeInsets.only(left: 50.w),
                      width: 36.w,
                      height: dinamic[index],
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor.accent2,
                          borderRadius: BorderRadius.circular(8)),
                    );
                  }
                })),
          ),
        ],
      ),
    );
  }

  List persent = [100, 75, 50, 25, 0];
  List<double> dinamic = [0, 66, 162, 110];
}
