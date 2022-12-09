import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';

class PointsWidget extends StatelessWidget {
  const PointsWidget({
    Key? key,
    required this.svgSrc,
    required this.text,
    required this.data,
  }) : super(key: key);
  final String svgSrc;
  final String text;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SvgPicture.asset(svgSrc),
      Text(text,
          style: AppTextStyles.tS12w5.copyWith(
            color: AppColors.metalColor.white.withOpacity(0.4),
          )),
      Text(data,
          style: AppTextStyles.body16w7
              .copyWith(color: AppColors.metalColor.white)),
    ]);
  }
}
