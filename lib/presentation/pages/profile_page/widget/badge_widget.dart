import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/assets.dart';

class BadgeTabBarViewWidget extends StatelessWidget {
  const BadgeTabBarViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 3 / 1),
      itemCount: 8,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Stack(
          fit: StackFit.passthrough,
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(Assets.icons.badge, color: AppColors.primaryColor),
            Positioned(
                bottom: 0,
                child: SvgPicture.asset(
                  Assets.icons.badgeBottom,
                  width: MediaQuery.of(context).size.width / 3.4,
                  color: AppColors.metalColor.white,
                )),
            Container(
              height: 44.h,
              margin: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor.secondary,
                  border: Border.all(color: AppColors.primaryColor, width: 3)),
              child: Icon(Icons.timer_rounded,
                  color: AppColors.metalColor.white, size: 35.sp),
            )
          ],
        );
      },
    );
  }
}
