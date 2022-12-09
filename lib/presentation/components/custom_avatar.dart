import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/config/constants/app_colors.dart';

import '../../config/constants/assets.dart';

class CustomAvatarWidget extends StatelessWidget {
  const CustomAvatarWidget({
    super.key,
    this.avatarSize,
    this.image,
    this.backgroundColor,
  });

  final num? avatarSize;
  final String? image;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: avatarSize?.w ?? 56.w,
      height: avatarSize?.h ?? 56.h,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ?? AppColors.avatarColor),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.r),
        child: Image.asset(image ?? Assets.images.defAvatar),
      ),
    );
  }
}
