import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.suffixIcon,
    this.onTap,
    required this.controller,
    this.showPassword,
    required this.hintText,
    required this.prefixIcon,
    required this.labelText,
  }) : super(key: key);

  final TextEditingController controller;
  final bool? showPassword;
  final IconData? suffixIcon;
  final Function()? onTap;
  final String hintText;
  final String labelText;
  final IconData prefixIcon;

  // MaskTextInputFormatter inputFormatter = MaskTextInputFormatter(mask: '########',filter: { "#": RegExp(r'[A-Za-z]') },);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: AppTextStyles.body14w4
              .copyWith(color: AppColors.metalColor.black),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
          child: TextFormField(
            controller: controller,
            obscureText: showPassword != null ? showPassword! : false,
            style: AppTextStyles.body16w4.copyWith(color: AppColors.primaryColor),
            cursorColor: AppColors.primaryColor,
// inputFormatters: showPassword != null ? [inputFormatter]: [],

            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.metalColor.white,
              hintText: hintText,
              hintStyle: AppTextStyles.body16w4
                  .copyWith(color: AppColors.metalColor.grey2),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20.0),
              ),
              suffixIcon: suffixIcon != null
                  ? GestureDetector(
                      onTap: onTap,
                      child: Icon(
                        showPassword! ? suffixIcon : Icons.visibility_off,
                        color: AppColors.metalColor.grey3,
                      ),
                    )
                  : null,
              prefixIcon: Icon(
                prefixIcon,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
