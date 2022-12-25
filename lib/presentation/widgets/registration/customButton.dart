

import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_white.dart';
import 'package:sizer/sizer.dart';


class CustomButton extends StatelessWidget {
  String? text;
  Function? onClick;
  Color? btnColor;
  double? width;
  CustomButton({this.text,this.onClick,this.btnColor=ColorManager.darkOrangeColor,this.width=double.infinity});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick!();
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 1.h),
        padding: EdgeInsets.symmetric(vertical: 3.w),
        width: double.infinity,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        child: TextWhite(text!,textAlign: TextAlign.center,),
      ),
    );
  }
}