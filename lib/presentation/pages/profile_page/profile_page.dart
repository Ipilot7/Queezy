import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';
import 'package:queezy/presentation/components/custom_avatar.dart';
import 'package:queezy/presentation/pages/profile_page/widget/badge_widget.dart';
import 'package:queezy/presentation/pages/profile_page/widget/points_widget.dart';
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
    return Stack(
      children: [
        Image.asset(
          Assets.images.profileBg,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(
              8.w, MediaQuery.of(context).size.height * .2, 8.w, 0),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: AppColors.metalColor.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(32.r))),
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 32.h, bottom: 24.h),
                  child: Text(
                    'Madelyn Dias',
                    style: AppTextStyles.head24w5
                        .copyWith(color: AppColors.metalColor.black),
                  ),
                ),
                const _UserRankWidget(
                    point: '590', localRank: '56', wordRank: '1,438'),
                TabBar(
                  padding: EdgeInsets.only(top: 10.h),
                  labelStyle: AppTextStyles.body14w7,
                  unselectedLabelStyle: AppTextStyles.body14w4,
                  splashBorderRadius:
                      BorderRadius.vertical(top: Radius.circular(32.r)),
                  labelColor: AppColors.primaryColor,
                  unselectedLabelColor: AppColors.metalColor[70],
                  indicatorPadding: EdgeInsets.only(top: 38.h),
                  labelPadding: EdgeInsets.zero,
                  indicator: BoxDecoration(
                      color: AppColors.primaryColor, shape: BoxShape.circle),
                  tabs: const [
                    Tab(text: 'Badge'),
                    Tab(text: 'Stats'),
                    Tab(text: 'Details'),
                  ],
                ),
                Expanded(
                  child: Container(
                    color: AppColors.metalColor.white,
                    child: TabBarView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        const BadgeTabBarViewWidget(),
                        Visibility(
                          visible: true,
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 1.8,
                            child: ListView(
                              physics: const BouncingScrollPhysics(),
                              children: [
                                const TotalQueezWidget(),
                                SizedBox(height: 50.h),
                                // TopPerfomensWidget(),
                                // SizedBox(height: 200.h)
                              ],
                            ),
                          ),
                        ),
                        Container()
                        // SearchPageBodyWidget(
                        //   title: 'Quiz',
                        //   actionButtonTitle: 'Clear all',
                        //   onPressed: () {},
                        //   items: [],
                        // ),
                      ],
                    ),
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
              ],
            ),
          ),
        ),
        Align(
          alignment: const Alignment(0, -0.75),
          child: CustomAvatarWidget(
            image: Assets.images.p2,
            backgroundColor: AppColors.avatarColor,
            avatarSize: 96,
          ),
        ),
        Align(
            alignment: const Alignment(0.88, -0.87),
            child: GestureDetector(
                onTap: () {}, child: SvgPicture.asset(Assets.icons.settings)))
      ],
    );
  }
}

class _UserRankWidget extends StatelessWidget {
  const _UserRankWidget({
    required this.point,
    required this.wordRank,
    required this.localRank,
  });

  final String point;
  final String wordRank;
  final String localRank;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101.h,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PointsWidget(
            svgSrc: Assets.icons.star,
            text: 'POINTS',
            data: point,
          ),
          const CustomDividerWidget(),
          PointsWidget(
            svgSrc: Assets.icons.earth,
            text: 'WORLD RANK',
            data: '#$wordRank',
          ),
          const CustomDividerWidget(),
          PointsWidget(
            svgSrc: Assets.icons.localRank,
            text: 'LOCAL RANK',
            data: '#$localRank',
          ),
        ],
      ),
    );
  }
}

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            AppColors.metalColor.white.withOpacity(0.1),
            AppColors.metalColor.white.withOpacity(0.5),
            AppColors.metalColor.white.withOpacity(0.1),
          ])),
    );
  }
}
