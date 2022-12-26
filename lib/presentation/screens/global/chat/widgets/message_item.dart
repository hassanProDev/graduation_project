import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';


class MessageItem extends StatelessWidget {
  const MessageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: TextBlack("my massage"),
      trailing: TextBlack(DateTime.now().toString()),
    );
  }
}
