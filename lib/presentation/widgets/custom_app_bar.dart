import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    this.backIcon,
    required this.title,
    this.titleTextStyle,
    this.onPressed,
    required this.isHavePadding,
  });

  final String? backIcon;
  final String title;
  final TextStyle? titleTextStyle;
  final VoidCallback? onPressed;
  final bool isHavePadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          isHavePadding ? 0 : 20.w, 45.h, isHavePadding ? 0.w : 24.w, 22.h),
      child: Row(
        children: [
          IconButton(
            onPressed: onPressed ?? () => Navigator.pop(context),
            icon: SvgPicture.asset(backIcon ?? Assets.icons.backArrow),
          ),
          const Spacer(flex: 2),
          Text(title, style: titleTextStyle ?? AppTextStyles.head24w5),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
