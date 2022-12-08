import 'package:flutter/material.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.suffixIcon,
    this.onTap,
    required this.controller,
    this.showPassword,
    required this.labelText,
    required this.prefixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final bool? showPassword;
  final IconData? suffixIcon;
  final Function? onTap;
  final String labelText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    if (suffixIcon == null) {
      return TextFormField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.metalColor.white,
          labelText: labelText,
          labelStyle: AppTextStyles.body16w4,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.primaryColor,
          ),
        ),
      );
    } else {
      return TextFormField(
        controller: controller,
        obscureText: !showPassword!,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.metalColor.white,
          labelText: labelText,
          labelStyle: AppTextStyles.body16w4,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.primaryColor,
          ),
          suffixIcon: GestureDetector(
            onTap: () => onTap,
            child: Icon(
              showPassword! ? suffixIcon : Icons.visibility_off,
              color: AppColors.metalColor.grey3,
            ),
          ),
        ),
      );
    }
  }
}
