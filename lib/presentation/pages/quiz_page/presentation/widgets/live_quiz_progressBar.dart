import 'package:flutter/material.dart';

import '../../../../../config/constants/app_colors.dart';

class liveQuizProgressBar extends StatelessWidget {
  const liveQuizProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: SizedBox(
        height: 4,
        width: 148,
        child: LinearProgressIndicator(
          color: Colors.white,
          backgroundColor: AppColors.primaryColor.accent2,
          value: 0.35,
        ),
      ),
    );
  }
}
