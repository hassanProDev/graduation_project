import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:sizer/sizer.dart';

class TextBlack extends StatelessWidget {
  String text;
  double? fontSize;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  FontStyle? fontStyle;

  TextBlack(
    this.text, {
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.w),
      child: Text(
        text,
        style: Theme.of(context).textTheme.caption!.copyWith(
            fontSize: fontSize ?? SizeManager.size10,
            fontStyle: fontStyle ?? FontStyle.normal,
            fontWeight: fontWeight ?? FontWeight.normal),
        textAlign: textAlign,
      ),
    );
  }
}
