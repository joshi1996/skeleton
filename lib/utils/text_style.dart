import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_flutter_sckeleton/utils/colors.dart';

abstract class AppTextStyle {
  static final TextStyle _regular = GoogleFonts.raleway();

  static TextStyle get regular18 =>
      _regular.copyWith(fontSize: 18.sp, color: AppColor.white);
  static TextStyle get regular16 =>
      _regular.copyWith(fontSize: 16.sp, color: AppColor.white);
  static TextStyle get regular14 =>
      _regular.copyWith(fontSize: 14.sp, color: AppColor.white);
  static TextStyle get regular12 =>
      _regular.copyWith(fontSize: 12.sp, color: AppColor.white);
}
