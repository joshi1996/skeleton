import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_sckeleton/common_widget/back_button_widget.dart';
import 'package:new_flutter_sckeleton/common_widget/text_form_field_widget.dart';
import 'package:new_flutter_sckeleton/common_widget/text_view_widget.dart';
import 'package:new_flutter_sckeleton/gen/assets.gen.dart';
import 'package:new_flutter_sckeleton/utils/colors.dart';
import 'package:new_flutter_sckeleton/utils/text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          30.verticalSpace,
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: BackButtonWidget(),
          ),
          20.verticalSpace,
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Assets.svg.cartIcon.svg(
              height: 40.r,
              width: 40.r,
              colorFilter: ColorFilter.mode(
                AppColor.primaryHighlightColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
              children: [
                TextViewWidget(
                  text: 'Login',
                  textStyle: AppTextStyle.bold24.copyWith(
                    color: AppColor.primaryDarkColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: TextViewWidget(
              text: 'One more step to get in',
              textStyle: AppTextStyle.regular16.copyWith(
                color: AppColor.primaryColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: TextFormFieldWidget(),
          ),
        ],
      ),
    );
  }
}
