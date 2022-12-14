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
                    margin: EdgeInsets.only(left: 8.w,right: 8.w,bottom: 8.w),
                    padding: EdgeInsets.fromLTRB(16.w, 24.h, 16.w, 16.h),
                    height: MediaQuery.of(context).size.height*.605,
                    decoration: BoxDecoration(
                        color: AppColors.metalColor.white,
                        borderRadius: BorderRadius.circular(32)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SPORTS',
                          textAlign: TextAlign.start,
                          style: AppTextStyles.body14w5.copyWith(
                              letterSpacing: 0.8,
                              color: AppColors.metalColor.grey2),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .5,
                          padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
                          child: AutoSizeText(
                              textAlign: TextAlign.start,
                              'Basic Trivia Quiz',
                              maxLines: 1,
                              minFontSize: 10,
                              style: AppTextStyles.head24w5
                                  .copyWith(color: AppColors.textColor)),
                        ),
                        const QuizInfoContainer(),
                        Text(
                          'DESCRIPTION',
                          textAlign: TextAlign.start,
                          style: AppTextStyles.body14w5.copyWith(
                              letterSpacing: 0.8,
                              color: AppColors.metalColor.grey2),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
                          child: Text(
                              textAlign: TextAlign.start,
                              'Any time is a good time for a quiz and even better if that happens to be a football themed quiz!                                                       ',
                              style: AppTextStyles.body16w4
                                  .copyWith(color: AppColors.textColor)),
                        ),
                        Row(
                          children: [
                            const CustomAvatarWidget(),
                            SizedBox(width: 12.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AutoSizeText(
                                  'Brandon Curtis',
                                  maxLines: 1,
                                  minFontSize: 10,
                                  style: AppTextStyles.body14w5.copyWith(
                                      color: AppColors.metalColor.black),
                                ),
                                AutoSizeText(
                                  'Creator',
                                  maxLines: 1,
                                  minFontSize: 10,
                                  style: AppTextStyles.body12w4.copyWith(
                                      color: AppColors.metalColor.grey3),
                                ),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                              textColor: AppColors.primaryColor.secondary,
                              text: 'Play Solo',
                              bgColor: AppColors.metalColor.white,
                              onPressed: () => Navigator.pushNamed(context, Routes.liveQuiz),
                            ),
                            CustomButton(
                              textColor: AppColors.metalColor.white,
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
