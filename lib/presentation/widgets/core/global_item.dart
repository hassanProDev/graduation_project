import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/widgets/item_study/rich_item_text.dart';
import 'package:sizer/sizer.dart';

class GlobalItem extends StatelessWidget {
  const GlobalItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: Card(
        elevation: 5,
        child: ListTile(dense: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: Colors.black,
            ),
          ),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichItemText(
                titleText: 'instractor',
                text: 'ahmed',
              ),
              RichItemText(
                titleText: "start",
                text: '5:00',
              ),
            ],
          ),
          title:  RichItemText(
            titleText: "subject",
            text: "accounting",
          ),
        subtitle:  RichItemText(
          titleText: "end",
          text: '6:30',
        ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichItemText(
                titleText: "duration",
                text: "1:30",
              ),
              RichItemText(
                titleText: 'date',
                text: '5-1-2022',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
