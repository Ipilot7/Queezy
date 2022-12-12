import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/app_text_styles.dart';

class liveQuizContainer extends StatelessWidget {
  liveQuizContainer({
    Key? key,
    required this.bgColor,
    required this.imgIcon,
    required this.text,
  }) : super(key: key);

  final Color? bgColor;
  final String imgIcon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      width: 50,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              imgIcon,
              height: 16,
              width: 16,
            ),
            Text(
              text!,
              style: AppTextStyles.body12w5,
            ),
          ],
        ),
      ),
    );
  }
}
