import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/arrow_back.dart';
import 'package:graduation_project/presentation/widgets/core/global_text.dart';
import 'package:graduation_project/presentation/widgets/registration/customButton.dart';
import 'package:graduation_project/presentation/widgets/registration/custom_textformfield.dart';
import 'package:sizer/sizer.dart';

class AddNoteScreen extends StatelessWidget {
  @override
  var selectedDate = DateTime.now();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GlobalText(
          text: "Add Note",
          textColor: blackColor,
        ),
        leading: ArrowBack(),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.w),
        child: Form(
          child: ListView(
            children: [
              CustomTextFormField(
                text: 'note title',
              ),
              TextFormField(minLines: 3,maxLines: 6,
                decoration: InputDecoration(
                  isDense: true,
                  labelText: "note description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
              ),Container(
                padding: EdgeInsets.symmetric(vertical: 1.w),
                alignment: Alignment.center,
                child: InkWell(
                  onTap: (){
                    openDatePicker(context);
                  },
                  child: Text("${selectedDate.year}-${selectedDate.month}-${selectedDate.day}"),
                ),
              ),
              CustomButton(
                width: 30.w,
                text: 'add'.toUpperCase(),
                onClick: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  void openDatePicker(BuildContext context) async {
    var chooseDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        Duration(days: 365),
      ),
    );
    if (chooseDate != null) {
      selectedDate=chooseDate;
    }
  }

}


