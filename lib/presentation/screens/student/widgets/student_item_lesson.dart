import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_dark_orange.dart';
import 'package:sizer/sizer.dart';
class StudentItemLesson extends StatelessWidget {
  const StudentItemLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: Card(
        elevation: 5,
        child: ListTile(
          tileColor: ColorManager.lightBink,
          leading: Icon(Icons.person,color: ColorManager.terkwazColor,size: 35.sp,),
            title: TextDarkOrange("accounting",fontSize: SizeManager.size18,),
          subtitle: TextDarkOrange("5-5-2022",fontSize: SizeManager.size18,),
          trailing: TextDarkOrange("5:00 AM",fontSize: SizeManager.size18,),
        ),
      ),
    );
  }
}