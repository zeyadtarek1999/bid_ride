import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_text.dart';

class CustomMaterialButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final TextStyle? textStyle;

  const CustomMaterialButton({
    super.key,
    required this.text,
    this.style,
    this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0.r),
        color:  AppColors.secondColor,
      ),
      child: MaterialButton(
        color: AppColors.secondColor,
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
