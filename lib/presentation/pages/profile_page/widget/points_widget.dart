import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return SizedBox(
      width: MediaQuery.of(context).size.width/4.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(svgSrc),
          AutoSizeText(text,
              maxLines: 1,
              minFontSize: 10,
              style: AppTextStyles.tS12w5.copyWith(
                color: AppColors.metalColor.white.withOpacity(0.4),
              )),
          Container(
            height: 25.h,
            alignment: Alignment.center,
            child: AutoSizeText(data,
                maxLines: 1,
                minFontSize: 12,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.body16w7
                    .copyWith(color: AppColors.metalColor.white)),
          ),
        ],
      ),
    );
  }
}
