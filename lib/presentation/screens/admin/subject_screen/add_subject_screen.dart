import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/widgets/core/custom_drop_down_button.dart';
import 'package:graduation_project/presentation/widgets/core/custom_textformfield.dart';

class AddSubjectScreen extends StatelessWidget {
  const AddSubjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomTextFormField(
          text: "Subject Name",
        ),
        CustomDropDownButton(
          hint: "chose the group",
          listDropDown: [
            "management and information systems group 1",
            "management and information systems group 2",
            "management and information systems group 3",
            "management and information systems group 4",
          ],
        )
      ],
    );
  }
}
