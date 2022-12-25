import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';
import 'package:sizer/sizer.dart';

class NoteItem extends StatelessWidget {
  String? title;
  String? description;
  String? date;

  NoteItem({this.title, this.description, this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.sp),
      ),
      elevation: 5,
      child: ListTile(
        leading: TextBlack(
          title!,
        ),
        title: TextBlack(
          description!,
        ),
        subtitle: TextBlack(date!,),
        trailing: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.sp),
          ),
          child: InkWell(
            onTap: (){
            },
            child: Icon(Icons.done,color: ColorManager.darkOrangeColor,size: 25.sp,),
          ),
        ),
      ),
    );
  }
}
