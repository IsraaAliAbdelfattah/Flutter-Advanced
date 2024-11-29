import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TextStyles{
  static TextStyle font24Black700weight=TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );
  static TextStyle font24Blue700weight=TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: ColorsManager.mainBlue
  );
  static TextStyle font32Blue700weight=TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
      color: ColorsManager.mainBlue
  );
  static TextStyle font13Gray400weight=TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: ColorsManager.gray
  );
  static TextStyle font13Blue400weight=TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: ColorsManager.mainBlue
  );
   static TextStyle font13DarkBlue400weight=TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: ColorsManager.darkBlue
  );
  static TextStyle font14Gray400weight=TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorsManager.gray
  );
  static TextStyle font14LightGray400weight=TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorsManager.lightGray
  );
  static TextStyle font14DarkBlue500weight=TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: ColorsManager.darkBlue,
  );
  static TextStyle font13DarkBlue500weight=TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w500,
      color: ColorsManager.darkBlue,
  );
  static TextStyle font13Blue600weight=TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w600,
      color: ColorsManager.mainBlue, 
  );
  static TextStyle font16White600weight=TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white
  );

}