import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';
import 'package:queezy/config/constants/assets.dart';

import 'searches_item_widget.dart';

class CustomTabBarWidget extends StatelessWidget {
  const CustomTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 14.h),
          margin: EdgeInsets.fromLTRB(8.w, 24.h, 8.w, 0),
          decoration: BoxDecoration(
              color: AppColors.metalColor.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(32.r))),
          child: TabBar(
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
              Tab(text: 'Top'),
              Tab(text: 'Categories'),
              Tab(text: 'Quiz'),
            ],
          ),
        ),
        Positioned(
            top: 17.h,
            left: MediaQuery.of(context).size.width / 2.5,
            right: MediaQuery.of(context).size.width / 2.5,
            child: SvgPicture.asset(Assets.icons.pinIcon))
      ],
    );
  }
}

class CustomTabBarViewWidget extends StatelessWidget {
  const CustomTabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppColors.metalColor.white,
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        child: TabBarView(
          physics: const BouncingScrollPhysics(),
          children: [
            SearchPageBodyWidget(
              title: 'Recent Searches',
              actionButtonTitle: 'Clear all',
              onPressed: () {},
              items: [],
            ),    SearchPageBodyWidget(
              title: 'Categories',
              actionButtonTitle: 'See all',
              onPressed: () {},
              items: [],
            ),    SearchPageBodyWidget(
              title: 'Quiz',
              actionButtonTitle: 'Clear all',
              onPressed: () {},
              items: [],
            ),

          ],
        ),
      ),
    );
  }
}

class SearchPageBodyWidget extends StatelessWidget {
  const SearchPageBodyWidget(
      {super.key,
      required this.title,
      required this.actionButtonTitle,
      required this.onPressed,
      required this.items});

  final String title;
  final String actionButtonTitle;
  final VoidCallback onPressed;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.metalColor.white,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * .75),
                child: AutoSizeText(
                  title,
                  minFontSize: 10,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: AppTextStyles.body20w5
                      .copyWith(color: AppColors.textColor),
                ),
              ),
              GestureDetector(
                onTap: onPressed,
                child: Text(
                  actionButtonTitle,
                  style: AppTextStyles.body14w5
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(
                  top: 15.h, bottom: MediaQuery.of(context).size.height / 8),
              physics: const BouncingScrollPhysics(),
              itemCount: 10,

              ///items.length
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              itemBuilder: (context, index) {
                /// TODO this add items List
                return SearchesItemWidget(
                    title: "Statistics Math Quiz",
                    image: Assets.images.defImage,
                    categoryName: 'Math',
                    quizCount: 12);
              },
            ),
          )
        ],
      ),
    );
  }
}
