import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';
import 'package:queezy/presentation/components/custom_avatar.dart';

class CustomSliverAppBarWidget extends StatelessWidget {
  const CustomSliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // SliverAppBar(
        // expandedHeight: 150.h,
        // floating: true,
        // elevation: 0,
        // pinned: true,
        // primary: true,
        // toolbarHeight: 80.h,
        // backgroundColor: AppColors.primaryColor,
        // flexibleSpace: FlexibleSpaceBar(
        //   collapseMode: CollapseMode.pin,
        //   expandedTitleScale: 1.1,
        //   titlePadding: EdgeInsets.zero,
        //   centerTitle: true,
        //   title:
        Container(
      height: 160.h,
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(24.w, 20.h, 24.w, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(Assets.icons.sunIcon),
                  Text(
                    ' Hayrli kun'.toUpperCase(),
                    style: AppTextStyles.body12w5
                        .copyWith(color: AppColors.pinkLight),
                  ),
                ],
              ),
              Text(
                'Madelyn Dias',
                style: AppTextStyles.head24w5
                    .copyWith(color: AppColors.metalColor.white, fontSize: 24),
              ),
            ],
          ),
          const CustomAvatarWidget(),
        ],
      ),
      //   ),
      // ),
    );
  }
}
