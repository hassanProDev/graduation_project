import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';
import 'package:graduation_project/presentation/widgets/core/arrow_back.dart';
import 'package:graduation_project/presentation/widgets/core/custom_drop_down_button.dart';
import 'package:graduation_project/presentation/widgets/core/custom_textformfield.dart';
import 'package:sizer/sizer.dart';

class AddStudentScreen extends StatelessWidget {
  const AddStudentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBlack("Add New Event"),
        leading: ArrowBack(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 45.w,
                      child: CustomTextFormField(
                        text: "first name",
                      ),
                    ),
                    SizedBox(
                      width: 45.w,
                      child: CustomTextFormField(
                        text: "second name",
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 45.w,
                      child: CustomTextFormField(
                        text: "third name",
                      ),
                    ),
                    SizedBox(
                      width: 45.w,
                      child: CustomTextFormField(
                        text: "fourth name",
                      ),
                    ),
                  ],
                ),
                CustomTextFormField(
                  text: "address",
                ),
                CustomTextFormField(
                  text: "phone",
                ),
                CustomDropDownButton(
                  hint: "choose your gender",

                  listDropDown: ["female", "male"],
                ),
                SizedBox(
                  width: 70.w,
                  child: CustomDropDownButton(
                    hint: "chose your field study",
                    listDropDown: [
                      "management and information systems group 1",
                      "management and information systems group 2",
                      "management and information systems group 3",
                      "management and information systems group 4",
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
