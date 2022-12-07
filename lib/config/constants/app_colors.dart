import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static const Color pink = Color(0xffFF8FA2);
  static const Color pinkLight = Color(0xffFFD6DD);
  static const Color avatarColor = Color(0xffBF83FF);
  static const Color textColor = Color(0xff0C092A);

  static PrimaryColor primaryColor = const PrimaryColor(
    0xFF6A5AE0,
    <int, Color>{
      100: Color(0xFF6A5AE0),
      75: Color(0xFF9087E5),
      50: Color(0xFFC4D0FB),
      25: Color(0xFFC9F2E9),
    },
  );

  
  static MetalColor metalColor = MetalColor();
}



class PrimaryColor extends ColorSwatch<int> {
  const PrimaryColor(super.primary, super.swatch);

  Color get primary => this[100]!;
  Color get secondary => this[75]!;
  Color get accent2 => this[50]!;
  Color get shade25 => this[25]!;
}

class MetalColor extends ColorSwatch<int> {
  MetalColor()
      : super(
          0xff111827,
          <int, Color>{
            100: const Color(0xff49465F),
            90: const Color(0xFF49465F),
            70: const Color(0xff858494),
            50: const Color(0xffCCCCCC),
            30: const Color(0xffE6E6E6),
            10: const Color(0xffEFEEFC),
            0: const Color(0xffFFFFFF),
          },
        );

  Color get black => this[100]!;
  Color get grey1 => this[90]!;
  Color get grey2 => this[70]!;
  Color get grey3 => this[50]!;
  Color get grey4 => this[30]!;
  Color get grey5 => this[10]!;
  Color get white => this[0]!;
}
