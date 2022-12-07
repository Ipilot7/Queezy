import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      required this.textcolor,
      required this.bgColor,
      this.width,
      required this.onPressed,
      this.icon})
      : super(key: key);
  final double? width;
  final String? icon;
  final void Function() onPressed;
  final String text;
  final Color textcolor;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    if (icon == null) {
      return TextButton(
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(
            Size(width?.w ?? double.maxFinite, 56.h),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(bgColor),
        ),
        onPressed: () => onPressed(),
        child: Text(
          text,
          style: AppTextStyles.body16w5.copyWith(color: textcolor),
        ),
      );
    } else {
      return TextButton.icon(
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(
            Size(width?.w ?? double.maxFinite, 56.h),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(bgColor),
        ),
        onPressed: () => onPressed(),
        label: Text(
          text,
          style: AppTextStyles.body16w5.copyWith(color: textcolor),
        ),
        icon: SvgPicture.asset(icon!),
      );
    }
  }
}
