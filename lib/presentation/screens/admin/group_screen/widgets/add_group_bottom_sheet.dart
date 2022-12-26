import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_white.dart';
import 'package:graduation_project/presentation/widgets/core/bottom_sheet_style.dart';
import 'package:graduation_project/presentation/widgets/core/customButton.dart';
import 'package:graduation_project/presentation/widgets/core/custom_drop_down_button.dart';
import 'package:graduation_project/presentation/widgets/core/custom_textformfield.dart';
import 'package:sizer/sizer.dart';

void groupBottomSheet(BuildContext context) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return BottomSheetStyle(
          mainTile: TextWhite("Add group"),
          columnOfContent: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
            child: Column(
              children: [
                CustomTextFormField(
                  text: "group Name",
                ),
                CustomDropDownButton(
                  hint: "choose department",
                  listDropDown: [
                    "management and information systems",
                    "commerce",
                  ],
                ),
                CustomButton(
                  text: "Add",
                  width: 30.w,
                )
              ],
            ),
          ),
        );
      });
}
