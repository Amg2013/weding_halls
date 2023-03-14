import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../utils/app_colors.dart';

enum AppThemes { darkTheme, lightTheme }

class AppTheme {
  static final appThemeDate = {
    AppThemes.lightTheme: ThemeData(
      primarySwatch: Colors.blue,
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
              color: HexColor('FF0000')),
          headline2: TextStyle(
            fontSize: 15.sp,
          )),
      useMaterial3: true,
      //app bar
      appBarTheme: AppBarTheme(backgroundColor: AppColors.blue),

      navigationBarTheme: NavigationBarThemeData(
          indicatorColor: AppColors.cyan, backgroundColor: AppColors.darkBlue),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.cyan,
      ),

      chipTheme: ChipThemeData(backgroundColor: AppColors.cyan),
      backgroundColor: AppColors.white_1,
      scaffoldBackgroundColor: AppColors.white_1,
    ),
  };
}
