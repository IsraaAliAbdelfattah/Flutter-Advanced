import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({super.key, this.borderRadius, this.backgroundColor, this.horizontalPadding, this.verticalPadding, this.buttonWidth, this.buttonHight, required this.buttonText, required this.textStyle, required this.onPressed});
final double?borderRadius;
final Color?backgroundColor;
final double?horizontalPadding;
final double?verticalPadding;
final double?buttonWidth;
final double?buttonHight;
final String buttonText;
final TextStyle textStyle;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius?.r??16),
        ),
      ),
      backgroundColor: WidgetStatePropertyAll(
        backgroundColor??ColorsManager.mainBlue,
      ),
      padding: WidgetStateProperty.all<EdgeInsets>(
        EdgeInsets.symmetric(
          horizontal: horizontalPadding?.w??12.w,
          vertical: verticalPadding?.h??14.h,
        ),
      ),
      fixedSize: WidgetStateProperty.all(
        Size(buttonWidth?.w??double.maxFinite,buttonHight?.h??55.h ),
      )
    ),
    onPressed: onPressed, 
    child:Text(
      buttonText,
      style: textStyle,
      ), );
  }
}