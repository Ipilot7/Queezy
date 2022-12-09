import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/presentation/pages/home_page/presentation/widgets/categories_widget.dart';
import 'package:queezy/presentation/pages/home_page/presentation/widgets/custom_sliver_app_bar_widget.dart';
import 'package:queezy/presentation/pages/home_page/presentation/widgets/top_user_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
        // NestedScrollView(
        // headerSliverBuilder: (context, innerBoxIsScrolled) =>
        //     [const CustomSliverAppBarWidget()],
        // body:
        ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const CustomSliverAppBarWidget(),
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: AppColors.metalColor.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(32.r))),
          child: Column(
            children: [
              const TopRankUserWidget(),
              SizedBox(height: 24.h),
              const CategoriesWidget(),
            ],
          ),
          // ),
        ),
      ],
    );
  }
}
