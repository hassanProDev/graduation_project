import 'package:flutter/material.dart';

class RichItemText extends StatelessWidget {
  String? titleText;
  String? text;
  RichItemText({this.titleText,this.text});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      text: "$titleText: ",
      style: Theme.of(context).textTheme.headline3,
      children: [
        TextSpan(
          text: text,
          style: Theme.of(context).textTheme.headline4,
        )
      ]
    ));
  }
}
