import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../config/constants/app_colors.dart';
import '../../../../../config/constants/app_text_styles.dart';
import '../../../../../config/constants/assets.dart';
import '../../../../components/custom_avatar.dart';
import '../../../../routes/routes.dart';
import '../../../../widgets/custom_button.dart';
import '../widgets/quiz_info_container.dart';

class QuizDetailsPage extends StatelessWidget {
  const QuizDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.h, bottom: 24.h, left: 16.h),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      //Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      Assets.icons.arrowBack,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 56.h,
              left: -170.w,
              child: Image.asset(Assets.images.o),
            ),
            Center(
              child: Column(
                children: [
                  Image.asset(Assets.images.quizDetails),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 20,
                      right: 16,
                    ),
                    height: 504.h,
                    width: 359.w,
                    decoration: BoxDecoration(
                        color: AppColors.metalColor.white,
                        borderRadius: BorderRadius.circular(32)),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SPORTS                                                                                    ',
                          textAlign: TextAlign.start,
                          style: AppTextStyles.body14w5
                              .copyWith(color: AppColors.metalColor.grey2),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
                          child: Text(
                              textAlign: TextAlign.start,
                              'Basic Trivia Quiz                                                       ',
                              style: AppTextStyles.head24w5),
                        ),
                        const quizInfoContainer(),
                        Text(
                          'DESCRIPTION                                                                      ',
                          textAlign: TextAlign.start,
                          style: AppTextStyles.body16w4
                              .copyWith(color: AppColors.metalColor.grey2),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
                          child: Text(
                              textAlign: TextAlign.start,
                              'Any time is a good time for a quiz and even better if that happens to be a football themed quiz!                                                       ',
                              style: AppTextStyles.body16w5),
                        ),
                        Row(
                          children: [
                            const CustomAvatarWidget(),
                            SizedBox(width: 20.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ConstrainedBox(
                                    constraints:
                                        BoxConstraints(maxWidth: 103.w),
                                    child: AutoSizeText(
                                      'Brandon Curtis',
                                      maxLines: 1,
                                      minFontSize: 10,
                                      style: AppTextStyles.body16w5.copyWith(
                                          color: AppColors.metalColor.black),
                                    )),
                                Container(
                                  width: 80.w,
                                  margin: EdgeInsets.only(top: 4.h),
                                  child: AutoSizeText(
                                    'Creator',
                                    maxLines: 1,
                                    minFontSize: 10,
                                    style: AppTextStyles.body14w4.copyWith(
                                        color: AppColors.metalColor.grey3),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 72.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                              width: 142.w,
                              textcolor: AppColors.primaryColor.secondary,
                              text: 'Play Solo',
                              bgColor: AppColors.metalColor.white,
                              onPressed: () {
                                Navigator.pushNamed(context, Routes.liveQuiz);
                              },
                            ),
                            CustomButton(
                              width: 169.w,
                              textcolor: AppColors.metalColor.white,
                              text: 'Play with Friends',
                              bgColor: AppColors.primaryColor,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
