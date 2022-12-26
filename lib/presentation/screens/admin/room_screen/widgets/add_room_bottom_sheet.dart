import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_white.dart';
import 'package:graduation_project/presentation/widgets/core/bottom_sheet_style.dart';
import 'package:graduation_project/presentation/widgets/core/customButton.dart';
import 'package:graduation_project/presentation/widgets/core/custom_textformfield.dart';
import 'package:sizer/sizer.dart';

void roomBottomSheet(BuildContext context){
  showModalBottomSheet(context: context, builder: (context){
    return BottomSheetStyle(
      mainTile: TextWhite("Add Department"),
      columnOfContent: Column(
        children: [
          CustomTextFormField(text: "Room Name",),
          CustomTextFormField(text: "Room Address",),
          CustomButton(text: "Add",width: 30.w,)
        ],
      ),
    );
  });
}