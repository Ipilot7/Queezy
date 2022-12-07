import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/presentation/routes/routes.dart';

void main() => runApp(const Queezy());

class Queezy extends StatelessWidget {
  const Queezy({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primaryColor.primary,
        ),
        onGenerateRoute: (settings) => Routes.generateRoute(settings),
      ),
    );
  }
}
