import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_sckeleton/common_widget/text_view_widget.dart';
import 'package:new_flutter_sckeleton/utils/colors.dart';
import 'package:new_flutter_sckeleton/utils/text_style.dart';

class TextFormFieldWidget extends StatelessWidget {
  final AutovalidateMode? autovalidateMode;
  final String? helperText, hintText, labelText;
  final TextStyle? helerTextStyle;
  final Widget? prefixIcon;
  final bool? isTextEnable, isRequired, autoFocus, isObsecureText;
  final TextEditingController? textEditingController;
  final FormFieldValidator<String>? validator;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? textInputFormatter;
  final int? lengthMax, maximumLines;
  final ValueChanged<String>? onChanged;
  final TextCapitalization? capitalization;
  final VoidCallback? tap;
  final VoidCallback? editingComplete;
  final ValueChanged<String>? fieldSubmitted;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;

  const TextFormFieldWidget({
    super.key,
    this.autoFocus,
    this.autovalidateMode,
    this.helperText,
    this.helerTextStyle,
    this.hintText,
    this.prefixIcon,
    this.isTextEnable,
    this.isRequired,
    this.labelText,
    this.textEditingController,
    this.textInputType,
    this.textInputFormatter,
    this.lengthMax,
    this.isObsecureText,
    this.onChanged,
    this.capitalization,
    this.maximumLines,
    this.tap,
    this.validator,
    this.editingComplete,
    this.fieldSubmitted,
    this.textInputAction,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: true,
      autofocus: autoFocus ?? false,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
      controller: textEditingController ?? TextEditingController(),
      keyboardType: textInputType ?? TextInputType.none,
      inputFormatters: textInputFormatter ?? <TextInputFormatter>[],
      maxLength: lengthMax ?? 0,
      obscureText: isObsecureText ?? false,
      onChanged: (value) {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
      onEditingComplete: editingComplete,
      onFieldSubmitted: fieldSubmitted,
      focusNode: focusNode,
      textInputAction: textInputAction,
      onTap: tap,
      textCapitalization: capitalization ?? TextCapitalization.characters,
      maxLines: maximumLines ?? 1,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColor.primaryHighlightColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColor.primaryHighlightColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColor.primaryHighlightColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColor.primaryHighlightColor),
        ),
        alignLabelWithHint: true,
        helperText: helperText ?? '',
        helperStyle:
            helerTextStyle ??
            AppTextStyle.regular12.copyWith(color: AppColor.primaryDarkColor),
        hint: TextViewWidget(
          text: hintText ?? '',
          textStyle: AppTextStyle.regular14.copyWith(
            color: AppColor.primaryDarkColor,
          ),
        ),
        hintFadeDuration: Duration(seconds: 5),
        prefixIcon:
            prefixIcon ??
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.email, color: AppColor.primaryDarkColor),
            ),
        enabled: isTextEnable ?? true,
        label: (isRequired ?? false)
            ? Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: labelText ?? '',
                      style: AppTextStyle.regular14.copyWith(
                        color: AppColor.primaryDarkColor,
                      ),
                    ),
                    TextSpan(
                      text: '*',
                      style: AppTextStyle.regular14.copyWith(color: Colors.red),
                    ),
                  ],
                ),
              )
            : TextViewWidget(
                text: labelText ?? '',
                textStyle: AppTextStyle.regular14.copyWith(
                  color: AppColor.primaryDarkColor,
                ),
              ),
        suffixIcon: Icon(
          Icons.keyboard_arrow_down,
          color: AppColor.primaryDarkColor,
        ),
      ),
    );
  }
}
