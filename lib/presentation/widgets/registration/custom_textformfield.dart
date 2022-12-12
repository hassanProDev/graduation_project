import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:sizer/sizer.dart';

class CustomTextFormField extends StatelessWidget {
  String? text;
  String? regexCondition;
  TextEditingController? controller;
  bool hasIcon;
  bool isPassword;
  bool hasRegex;
  IconData? iconData;
  Function? onClick;

  CustomTextFormField(
      {this.regexCondition,
      this.text,
      this.controller,
      this.hasIcon = false,
      this.iconData,
      this.onClick,
      this.hasRegex = false,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.w),
      child: TextFormField(
        validator: (value) {
          if (value == null||value.isEmpty) {
            return "Please Enter $text Currect";
          }
          if (hasRegex) {
            if (!RegExp('$regexCondition').hasMatch(value)) {
              return 'your $text must be $regexCondition';
            }
          }
        },
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          isDense: true,
          labelText: text!.toUpperCase(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.sp),
          ),
          suffixIcon: hasIcon
              ? InkWell(
                  onTap: () {
                    onClick!();
                  },
                  child: Icon(
                    iconData,
                    color: primaryColor,
                  ),
                )
              : SizedBox(),
        ),
      ),
    );
  }
}
