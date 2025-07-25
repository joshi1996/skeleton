import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_flutter_sckeleton/common_widget/text_view_widget.dart';
import 'package:new_flutter_sckeleton/utils/colors.dart';
import 'package:new_flutter_sckeleton/utils/text_style.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? appTitle;
  final Widget? backButton;
  final Color? backColor;

  const AppBarWidget({
    super.key,
    this.appTitle,
    this.backButton,
    this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextViewWidget(
        text: appTitle ?? '',
        textStyle: AppTextStyle.boldd16,
      ),
      backgroundColor: backColor ?? AppColor.primaryHighlightColor,
      centerTitle: true,
      leading:
          backButton ??
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back, color: AppColor.white),
          ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
