import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_decorations.dart';
import 'package:queezy/config/constants/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      this.textColor,
      this.bgColor,
      required this.onPressed,
      this.icon})
      : super(key: key);
  final String? icon;
  final void Function() onPressed;
  final String text;
  final Color? textColor;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: AppDecorations.buttonStyle(bgColor: bgColor),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: SvgPicture.asset('$icon'),
            ),
          Text(
            text,
            style: AppTextStyles.body16w5
                .copyWith(color: textColor ?? AppColors.metalColor.white),
          ),
        ],
      ),
    );
  }
}
