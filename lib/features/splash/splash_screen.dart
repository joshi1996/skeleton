import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:new_flutter_sckeleton/gen/assets.gen.dart';
import 'package:new_flutter_sckeleton/shared/app_enums.dart';
import 'package:new_flutter_sckeleton/utils/colors.dart';
import 'package:new_flutter_sckeleton/utils/text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.pushNamed(AppRouteName.login.name);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.svg.cartIcon.svg(
              height: 150.h,
              width: 150.w,
              colorFilter: ColorFilter.mode(
                AppColor.primaryDarkColor,
                BlendMode.srcIn,
              ),
            ),
            Text(
              'Welcome to Modern E Commerce App',
              style: AppTextStyle.regular18.copyWith(
                color: AppColor.primaryDarkColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
