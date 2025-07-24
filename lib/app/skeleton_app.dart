import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_sckeleton/routes/app_route_helper.dart';
import 'package:new_flutter_sckeleton/utils/theme.dart';

class SkeletonApp extends StatelessWidget {
  const SkeletonApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(360, 690),
      minTextAdapt: true,
    );
    return MaterialApp.router(
      routerConfig: AppRouteHelper.router,
      theme: appTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
