import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/app_colors.dart';

class CustomTextFormFieldWidget extends StatefulWidget {
  const CustomTextFormFieldWidget({
    super.key,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.onSubmit,
    this.onTap,
    this.label,
    this.prefix,
    this.isPassword = false,
    this.suffix,
    this.suffixPressed,
    this.borderColor,
    this.hint,
    this.fillColor,
    this.textAlign = TextAlign.start,
    this.validator,
    this.readOnly = false,
    this.textInputAction,
    this.textColor,
    this.hintColor,
    this.withBorders = true,
  });

  // Variables from defaultTextFormField
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onSubmit;
  final VoidCallback? onTap;
  final String? label;
  final IconData? prefix;
  final bool isPassword;
  final IconData? suffix;
  final VoidCallback? suffixPressed;
  final Color? borderColor;

  // Additional customization
  final String? hint;
  final Color? fillColor;
  final TextAlign textAlign;
  final String? Function(String?)? validator;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Color? textColor;
  final Color? hintColor;
  final bool withBorders;

  @override
  _CustomTextFormFieldWidgetState createState() => _CustomTextFormFieldWidgetState();
}

class _CustomTextFormFieldWidgetState extends State<CustomTextFormFieldWidget> {
  bool isObscured = false;

  @override
  void initState() {
    super.initState();
    isObscured = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: isObscured,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmit,
      onTap: widget.onTap,
      readOnly: widget.readOnly,
      validator: widget.validator,
      textAlign: widget.textAlign,
      textInputAction: widget.textInputAction,
      style: TextStyle(
        color: widget.textColor ?? AppColors.mainColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        hintText: widget.hint ?? widget.label,
        hintStyle: TextStyle(color: widget.hintColor ?? AppColors.hintColor),
        filled: widget.fillColor != null,
        fillColor: widget.fillColor,
        prefixIcon: widget.prefix != null ? Icon(widget.prefix) : null,
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            isObscured ? Icons.visibility_off : Icons.visibility,
            color: AppColors.hintColor,
          ),
          onPressed: () {
            setState(() {
              isObscured = !isObscured;
            });
            if (widget.suffixPressed != null) {
              widget.suffixPressed!();
            }
          },
        )
            : (widget.suffix != null
            ? IconButton(
          icon: Icon(widget.suffix),
          onPressed: widget.suffixPressed,
        )
            : null),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        border: widget.withBorders
            ? OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? AppColors.hintColor,
            width: 0.2.w,
          ),
          borderRadius: BorderRadius.circular(8.0),
        )
            : InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? AppColors.hintColor,
            width: 0.2.w,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.secondColor,
            width: 0.2.w,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 0.2.w,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 0.2.w,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
