import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/global_text.dart';
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
        leading: GlobalText(
          text: title!,
        ),
        title: GlobalText(
          text: description!,
        ),
        subtitle: GlobalText(text: date!,),
        trailing: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.sp),
          ),
          child: InkWell(
            onTap: (){
            },
            child: Icon(Icons.done,color: primaryColor,size: 25.sp,),
          ),
        ),
      ),
    );
  }
}
