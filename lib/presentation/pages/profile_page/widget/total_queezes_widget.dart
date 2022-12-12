import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/app_text_styles.dart';

import '../../../../config/constants/assets.dart';
import 'about_quizzes.dart';

class TotalQueezWidget extends StatefulWidget {
  const TotalQueezWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TotalQueezWidget> createState() => _TotalQueezWidgetState();
}

class _TotalQueezWidgetState extends State<TotalQueezWidget> {
  final items = ['Monthly', 'Week', 'Day'];
  String? value = 'Monthly';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.statsCl, borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerRight, child: customDropDownWidget()),

          //You have played a total 24 quizzes
          Padding(
            padding: EdgeInsets.only(top: 24.h, bottom: 16.h),
            child: RichText(
              text: TextSpan(
                text: 'You have played a total \n',
                style: AppTextStyles.body20w5
                    .copyWith(color: AppColors.metalColor.black),
                children: [
                  TextSpan(
                    text: '24 quizzes ',
                    style: AppTextStyles.body20w5
                        .copyWith(color: AppColors.primaryColor),
                  ),
                  const TextSpan(text: 'this month!'),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24.h,top: 16.h),
            child: CircularPercentIndicator(
              radius: 74.w,
              lineWidth: 10,
              percent: .75,
              animateFromLastPercent: true,
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: AppColors.primaryColor,
              backgroundColor: AppColors.metalColor.white,
              center: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: '37',
                          style: AppTextStyles.head32w7
                              .copyWith(color: AppColors.textColor)),
                      TextSpan(
                          text: '/50\n',
                          style: AppTextStyles.body16w5.copyWith(
                              color: AppColors.cpiDropColor.withOpacity(.5))),
                      TextSpan(
                          text: 'quiz played',
                          style: AppTextStyles.body14w4.copyWith(
                              color: AppColors.textColor.withOpacity(.5))),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutQuizzesWidget(
                mark: '5',
                desc: 'Quiz Created',
                svgSrc: Assets.icons.pencil,
                color: AppColors.metalColor.white,
              ),
              SizedBox(width: 15.w),
              AboutQuizzesWidget(
                mark: '21',
                desc: 'Quiz Won',
                svgSrc: Assets.icons.metal,
                color: AppColors.primaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container customDropDownWidget() {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.metalColor.white,
          borderRadius: BorderRadius.circular(12.r)),
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      height: 34.h,
      child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(12.r),
        dropdownColor: AppColors.metalColor.white,
        icon: RotatedBox(
          quarterTurns: 3,
          child: Padding(
            padding: EdgeInsets.only(left: 5.w, top: 4.w),
            child: Icon(Icons.arrow_back_ios,
                size: 16, color: AppColors.primaryColor),
          ),
        ),
        style: AppTextStyles.body12w5.copyWith(color: AppColors.textColor),
        items: items.map(buildItems).toList(),
        value: value,
        onChanged: (value) => setState(() => this.value = value),
      )),
    );
  }

  DropdownMenuItem<String> buildItems(String item) {
    return DropdownMenuItem(
      value: item,
      onTap: () {},
      child: Text(item,
          style: AppTextStyles.body12w5.copyWith(color: AppColors.textColor)),
    );
  }
}


//
// /// Bar chart example
//
//
// /// Example of a grouped bar chart with three series, each rendered with
// /// different fill colors.
// class GroupedFillColorBarChart extends StatelessWidget {
//   final List<charts.Series> seriesList;
//   final bool animate;
//
//   GroupedFillColorBarChart(this.seriesList, {this.animate});
//
//   factory GroupedFillColorBarChart.withSampleData() {
//     return new GroupedFillColorBarChart(
//       _createSampleData(),
//       // Disable animations for image tests.
//       animate: false,
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return new charts.BarChart(
//       seriesList,
//       animate: animate,
//       // Configure a stroke width to enable borders on the bars.
//       defaultRenderer: new charts.BarRendererConfig(
//           groupingType: charts.BarGroupingType.grouped, strokeWidthPx: 2.0),
//     );
//   }
//
//   /// Create series list with multiple series
//   static List<charts.Series<OrdinalSales, String>> _createSampleData() {
//     final desktopSalesData = [
//       new OrdinalSales('2014', 5),
//       new OrdinalSales('2015', 25),
//       new OrdinalSales('2016', 100),
//       new OrdinalSales('2017', 75),
//     ];
//
//     final tableSalesData = [
//       new OrdinalSales('2014', 25),
//       new OrdinalSales('2015', 50),
//       new OrdinalSales('2016', 10),
//       new OrdinalSales('2017', 20),
//     ];
//
//     final mobileSalesData = [
//       new OrdinalSales('2014', 10),
//       new OrdinalSales('2015', 50),
//       new OrdinalSales('2016', 50),
//       new OrdinalSales('2017', 45),
//     ];
//
//     return [
//       // Blue bars with a lighter center color.
//       new charts.Series<OrdinalSales, String>(
//         id: 'Desktop',
//         domainFn: (OrdinalSales sales, _) => sales.year,
//         measureFn: (OrdinalSales sales, _) => sales.sales,
//         data: desktopSalesData,
//         colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//         fillColorFn: (_, __) =>
//         charts.MaterialPalette.blue.shadeDefault.lighter,
//       ),
//       // Solid red bars. Fill color will default to the series color if no
//       // fillColorFn is configured.
//       new charts.Series<OrdinalSales, String>(
//         id: 'Tablet',
//         measureFn: (OrdinalSales sales, _) => sales.sales,
//         data: tableSalesData,
//         colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
//         domainFn: (OrdinalSales sales, _) => sales.year,
//       ),
//       // Hollow green bars.
//       new charts.Series<OrdinalSales, String>(
//         id: 'Mobile',
//         domainFn: (OrdinalSales sales, _) => sales.year,
//         measureFn: (OrdinalSales sales, _) => sales.sales,
//         data: mobileSalesData,
//         colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
//         fillColorFn: (_, __) => charts.MaterialPalette.transparent,
//       ),
//     ];
//   }
// }
//
// /// Sample ordinal data type.
// class OrdinalSales {
//   final String year;
//   final int sales;
//
//   OrdinalSales(this.year, this.sales);
// }