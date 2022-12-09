import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';
import 'package:queezy/config/constants/local_data.dart';
import 'package:queezy/presentation/pages/profile_page/widget/badge_widget.dart';
import 'package:queezy/presentation/pages/profile_page/widget/points_widget.dart';
import 'package:queezy/presentation/pages/profile_page/widget/tabs_widget.dart';
import 'package:queezy/presentation/pages/profile_page/widget/top_perfomens_widget.dart';
import 'package:queezy/presentation/pages/profile_page/widget/total_queezes_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int tab = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,length: 3,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          // Flexible(
          //   child: Image.asset(
          //     Assets.images.profileBg,
          //     width: double.infinity,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Container(), SvgPicture.asset(Assets.icons.settings)],
            ),
          ),
    
          Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 68),
                  Container(
                    width: 359.w,
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: AppColors.metalColor.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(32.r))),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 48.h, bottom: 24.h),
                          child: Text(
                            'Madelyn Dias',
                            style: AppTextStyles.head24w5,
                          ),
                        ),
                        Container(
                          width: 327.w,
                          height: 101.h,
                          padding: EdgeInsets.all(16.r),
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              PointsWidget(
                                svgSrc: Assets.icons.star,
                                text: 'POINTS',
                                data: '590',
                              ),
                              SvgPicture.asset(Assets.icons.divider),
                              PointsWidget(
                                svgSrc: Assets.icons.earth,
                                text: 'WORLD RANK',
                                data: '#1,438',
                              ),
                              SvgPicture.asset(Assets.icons.divider),
                              PointsWidget(
                                svgSrc: Assets.icons.localRank,
                                text: 'LOCAL RANK',
                                data: '#56',
                              ),
                            ],
                          ),
                        ),
                        
                        // Padding(
                        //   padding: EdgeInsets.symmetric(vertical: 16.h),
                        //   child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //       children: List.generate(
                        //         3,
                        //         (index) => GestureDetector(
                        //           onTap: () {
                        //             setState(() {
                        //               tab = index;
                        //             });
                        //           },
                        //           child: TabsWidget(
                        //             text: tabNames[index],
                        //             visible: tab != index,
                        //           ),
                        //         ),
                        //       )),
                        // ),
                        //tabViews
                        // const Visibility(
                        //   visible: false,
                        //   child: BadgeWidget(),
                        // ),
                        // Visibility(
                        //   visible: true,
                        //   child: SizedBox(
                        //     height: MediaQuery.of(context).size.height / 1.8,
                        //     child: ListView(
                        //       children: [
                        //         const TotalQueezWidget(),
                        //         SizedBox(height: 24.h),
                        //         TopPerfomensWidget(),
                        //         SizedBox(
                        //           height: 200.h,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 140.w,
                child: Container(
                    width: 96.w,
                    height: 96.h,
                    decoration: const BoxDecoration(
                        color: AppColors.avatarColor, shape: BoxShape.circle),
                    child: Image.asset(Assets.images.defAvatar)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
