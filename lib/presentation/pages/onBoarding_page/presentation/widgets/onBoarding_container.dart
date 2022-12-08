import 'package:flutter/material.dart';

import '/config/constants/app_colors.dart';
import '/config/constants/app_text_styles.dart';

class OnBoardingContainer extends StatelessWidget {
  const OnBoardingContainer(
      {super.key,
      required this.next,
      required this.skip,
      required this.title,
      required this.tNext,
      required this.tSkip});

  final VoidCallback next;
  final VoidCallback skip;
  final String title;
  final String tNext;
  final String tSkip;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      width: 343,
      height: 224,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyles.head24w5,
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: next,
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(311, 56),
                primary: AppColors.primaryColor.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(tNext),
            ),
            const SizedBox(height: 4),
            TextButton(
              onPressed: skip,
              style: TextButton.styleFrom(
                primary: AppColors.metalColor.grey2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(tSkip),
            ),
          ],
        ),
      ),
    );
  }
}
