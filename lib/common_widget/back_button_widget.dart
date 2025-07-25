import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:new_flutter_sckeleton/utils/colors.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.r,
      width: 45.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        color: AppColor.primaryDarkColor,
      ),
      child: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Icon(Icons.arrow_back),
        color: AppColor.white,
      ),
    );
  }
}
