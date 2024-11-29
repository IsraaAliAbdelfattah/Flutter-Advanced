import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/colors.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.contertPadding, this.fillColor});
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final EdgeInsetsGeometry? contertPadding;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor:fillColor?? ColorsManager.moreLightGray,
        isDense: true,
        contentPadding: contertPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1.3, color: ColorsManager.mainBlue),
              borderRadius: BorderRadius.circular(16),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1.3, color: ColorsManager.lighterGray),
              borderRadius: BorderRadius.circular(16),
            ),
        helperStyle: TextStyles.font14LightGray400weight,
        hintText: hintText,
        hintStyle:hintStyle?? hintStyle,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText??false,
      style: TextStyles.font14DarkBlue500weight,
    );
  }
}
