import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';
import 'package:queezy/config/constants/local_data.dart';
import 'package:queezy/presentation/pages/settings/presentation/widgets/settings_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.metalColor.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.h, bottom: 24.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    Assets.icons.backArrow,
                    color: AppColors.metalColor.black,
                  ),
                  Text(
                    'Settings',
                    style: AppTextStyles.head24w5
                        .copyWith(color: AppColors.metalColor.black),
                  ),
                  Container()
                ],
              ),
            ),
            Text(
              'ACCOUNT',
              style: AppTextStyles.body14w5
                  .copyWith(color: AppColors.metalColor.grey2),
            ),
            Column(
              children: List.generate(
                3,
                (index) => SettingsWidget(
                  icons: accountIcon[index],
                  name: account[index],
                  description: accountDesc[index],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, bottom: 16.h),
              child: Text(
                'OTHER',
                style: AppTextStyles.body14w5
                    .copyWith(color: AppColors.metalColor.grey2),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notification',
                  style: AppTextStyles.body16w5
                      .copyWith(color: AppColors.metalColor.black),
                ),
                CupertinoSwitch(value: true, onChanged: (value) {})
              ],
            ),
            const SettingsWidget(
                icons: Icons.code,
                name: 'Change Difficulty',
                description: 'Easy, normal, hard'),
            const SettingsWidget(
                icons: Icons.telegram,
                name: 'FAQ',
                description: 'Most frequently asked question'),
            Padding(
              padding: EdgeInsets.only(top: 32.h),
              child: Center(
                child: Text(
                  'Logout',
                  style: AppTextStyles.body16w5.copyWith(color: AppColors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
