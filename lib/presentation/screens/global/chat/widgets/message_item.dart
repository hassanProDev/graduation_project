import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';
import 'package:sizer/sizer.dart';


class MessageItem extends StatelessWidget {
  bool? isMe=false;
  MessageItem({this.isMe});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe!?MainAxisAlignment.end:MainAxisAlignment.start,
      children: [
    Container(
      width: 75.w,
          child: Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.person),
              title: TextBlack("my massage"),
              subtitle: TextBlack("${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}   ${DateTime.now().hour}:00"),
            ),
          ),
        ),
      ],
    );
  }
}
