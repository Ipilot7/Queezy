// import 'package:flutter/material.dart';

// import 'app_colors.dart';

// abstract class AppDecorations {
//   static BoxDecoration defDecor = BoxDecoration(
//     borderRadius: BorderRadius.circular(10),
//     color: AppColors.metalColor.shade10,
//   );

//   static ButtonStyle buttonStyle({
//     double? borderRadius,
//     Color? bgColor,
//     EdgeInsets? padding,
//     BorderSide? border,
//   }) {
//     return ButtonStyle(
//       shape: MaterialStateProperty.all(
//         RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(borderRadius ?? 10),
//           side: border ?? BorderSide.none,
//         ),
//       ),
//       backgroundColor: MaterialStateProperty.all(bgColor ?? AppColors.primaryLight),
//       overlayColor: MaterialStateProperty.all(AppColors.primaryLight.shade100.withOpacity(.2)),
//       padding: MaterialStateProperty.all(padding),
//     );
//   }
// }
