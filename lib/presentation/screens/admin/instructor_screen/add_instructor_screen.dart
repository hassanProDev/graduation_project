import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';
import 'package:graduation_project/presentation/widgets/core/arrow_back.dart';
import 'package:graduation_project/presentation/widgets/core/custom_drop_down_button.dart';
import 'package:graduation_project/presentation/widgets/core/custom_textformfield.dart';
import 'package:sizer/sizer.dart';

class AddInstructorScreen extends StatelessWidget {
  const AddInstructorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBlack("Add New Event"),
        leading: ArrowBack(),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 35.w,
                    child: CustomTextFormField(
                      text: "first name",
                    ),
                  ),
                  SizedBox(
                    width: 35.w,
                    child: CustomTextFormField(
                      text: "second name",
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 35.w,
                    child: CustomTextFormField(
                      text: "third name",
                    ),
                  ),
                  SizedBox(
                    width: 35.w,
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
                listDropDown: [
                  "female",
                  "male",
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
