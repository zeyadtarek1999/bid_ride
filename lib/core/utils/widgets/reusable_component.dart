import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ReusableComponent {
  Widget defaultTextFormField({
    required TextEditingController? controller,
    required TextInputType? keyboardType,
    Function(String)? onChanged,
    Function(String)? onSubmit,
    VoidCallback? onTap,
    required String? Function(String?)? validate,
    String? label,
    IconData? prefix,
    bool isPassword = false,
    IconData? suffix,
    VoidCallback? suffixPressed,
    Color? borderColor,
  }) {
    bool isObscured = isPassword;
    return StatefulBuilder(
      builder: (context, setState) {
        return TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: isObscured,
          onChanged: onChanged,
          onFieldSubmitted: onSubmit,
          onTap: onTap,
          validator: validate,
          decoration: InputDecoration(
            hintStyle: TextStyle(color: AppColors.hintColor),
            hintText: label,
            prefixIcon: Icon(prefix),
            suffixIcon: isPassword ? IconButton(
              icon: Icon(isObscured ? Icons.visibility_off : Icons.visibility, color:  AppColors.hintColor),
              onPressed: () {
                setState(() {
                  isObscured = !isObscured;
                });
                if (suffixPressed != null) {
                  suffixPressed();
                }
              },
            ) : (suffix != null ? IconButton(icon: Icon(suffix), onPressed: suffixPressed) : null),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: borderColor ??  AppColors.hintColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide:  BorderSide(color:AppColors.secondColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.red),
            ),
          ),
        );
      },
    );
  }

  Widget defaultButton({
    required String text,
    required VoidCallback onPressed,  // Updated to use VoidCallback
    bool isUpperCase = true,
    TextStyle textStyle = const TextStyle(color: Colors.white, fontSize: 16),  // Added text style customization
  }) => Container(
    height: 52.0,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color:  AppColors.secondColor,
    ),
    child: MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: textStyle,
      ),
    ),
  );

}
