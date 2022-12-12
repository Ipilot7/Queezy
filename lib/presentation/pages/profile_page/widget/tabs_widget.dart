
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/assets.dart';

import '../../../../config/constants/app_text_styles.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({
    Key? key,
    required this.text,
    required this.visible,
  }) : super(key: key);
  final String text;
  final bool visible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: AppTextStyles.body14w7.copyWith(color: AppColors.primaryColor),
        ),
        SizedBox(height: 8.h),
        Visibility(
            visible: !visible, child: SvgPicture.asset(Assets.icons.coma)),
        Visibility(
            visible: visible,
            child: SvgPicture.asset(
              Assets.icons.coma,
              color: Colors.transparent,
            ))
      ],
    );
  }
}
