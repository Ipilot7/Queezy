import 'package:flutter/material.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
class ORWidget extends StatelessWidget {
  const ORWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.8,
          child: Divider(
              thickness: 1, height: 10, color: AppColors.metalColor.grey4),
        ),
        Text(
          'OR',
          style: AppTextStyles.body16w4
              .copyWith(color: AppColors.metalColor.grey2),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.8,
          child: Divider(
              thickness: 1, height: 10, color: AppColors.metalColor.grey4),
        ),
      ],
    );
  }
}
