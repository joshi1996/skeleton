import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_sckeleton/common_widget/back_button_widget.dart';
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
        children: [
          30.verticalSpace,
          BackButtonWidget(),
          20.verticalSpace,
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            child: Assets.svg.cartIcon.svg(
              height: 40.r,
              width: 40.r,
              colorFilter: ColorFilter.mode(
                AppColor.primaryHighlightColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
            child: TextViewWidget(
              text: 'Login',
              textStyle: AppTextStyle.bold18.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColor.primaryDarkColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
