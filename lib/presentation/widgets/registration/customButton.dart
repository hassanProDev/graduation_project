

import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:sizer/sizer.dart';


class CustomButton extends StatelessWidget {
  String? text;
  Function? onClick;
  Color? btnColor;
  double? width;
  CustomButton({this.text,this.onClick,this.btnColor=primaryColor,this.width=double.infinity});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick!();
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 1.h),
        padding: EdgeInsets.symmetric(vertical: 4.w),
        width: double.infinity,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        child: Text(text!.toUpperCase(),textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline5),
      ),
    );
  }
}