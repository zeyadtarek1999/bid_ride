import 'package:bid_ride/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.mainColor,
    hintColor: AppColors.hintColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    fontFamily:  Assets.fonts.almaraiRegular,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.mainColor,
        fontSize: 32.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.mainColor,
        fontSize: 28.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w500,
        color: AppColors.mainColor,
        fontSize: 24.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.white,
        fontSize: 22.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w500,
        color: AppColors.white,
        fontSize: 18.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.white,
        fontSize: 16.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        fontSize: 20.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w500,
        color: AppColors.black,
        fontSize: 18.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.black,
        fontSize: 16.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w500,
        color: AppColors.mainTextColor,
        fontSize: 18.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.mainTextColor,
        fontSize: 16.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.mainTextColor,
        fontSize: 14.sp,
        fontFamily: Assets.fonts.almaraiRegular,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.mainColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
        ),
        textStyle: WidgetStateProperty.resolveWith(
              (states) => TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            fontFamily: Assets.fonts.almaraiRegular,
            color: AppColors.white,
          ),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.mainColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
        ),
        textStyle: WidgetStateProperty.resolveWith(
              (states) => TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            fontFamily: Assets.fonts.almaraiRegular,
            color: AppColors.white,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
        ),
        textStyle: WidgetStateProperty.resolveWith(
              (states) => TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            fontFamily: Assets.fonts.almaraiRegular,
            color: AppColors.mainColor,
          ),
        ),
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
      ),
    ),
  );
}
