import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_text.dart';

class CustomMaterialButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final Color? borderColor;
  final Color? color;
  final double? borderWidth; // Added borderWidth parameter

  const CustomMaterialButton({
    super.key,
    required this.text,
    this.textStyle,
    required this.onPressed,
    this.color,
    this.borderColor,
    this.borderWidth, // Initialize borderWidth parameter
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0.r),
        color: borderColor ?? AppColors.secondColor,
        border: Border.all(
          color: borderColor ?? AppColors.secondColor, // Border color
          width: borderWidth ?? 0.0, // Border width (default is 2.0 if null)
        ),
      ),
      child: MaterialButton(
        color: color ?? AppColors.secondColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0.r),
        ),
        child: CustomTextWidget(
          text: text,
          textStyle: textStyle ?? Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.buttonTextColor),
        ),
      ),
    );
  }
}
