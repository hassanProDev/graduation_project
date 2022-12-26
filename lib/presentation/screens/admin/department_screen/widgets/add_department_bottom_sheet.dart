

import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_white.dart';
import 'package:graduation_project/presentation/widgets/core/bottom_sheet_style.dart';
import 'package:graduation_project/presentation/widgets/core/customButton.dart';
import 'package:graduation_project/presentation/widgets/core/custom_textformfield.dart';
import 'package:sizer/sizer.dart';

void departmentBottomSheet(BuildContext context){
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context, builder: (context){
    return BottomSheetStyle(
      mainTile: TextWhite("Add Department"),
      columnOfContent: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            SizedBox(height: 5.h,),
            CustomTextFormField(text: "Department Name",),
            CustomButton(text: "Add",width: 20.w,),
            SizedBox(height: 10.h,),
          ],
        ),
      ),
    );
  });
}