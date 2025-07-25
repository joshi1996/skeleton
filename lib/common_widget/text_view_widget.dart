import 'package:flutter/material.dart';
import 'package:new_flutter_sckeleton/utils/text_style.dart';

class TextViewWidget extends StatelessWidget {
  final String? text;
  final int? mLine;
  final TextStyle? textStyle;
  const TextViewWidget({super.key, this.text, this.mLine, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      maxLines: mLine ?? 1,
      overflow: (mLine ?? 0) != 0 ? TextOverflow.ellipsis : null,
      style: textStyle ?? AppTextStyle.regular14,
    );
  }
}
