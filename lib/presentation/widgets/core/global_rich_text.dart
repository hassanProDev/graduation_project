import 'package:flutter/material.dart';

class GlobalRichText extends StatelessWidget {
  const GlobalRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return             RichText(
      text: TextSpan(
        text: "elmotatawera".toUpperCase(),
        style: Theme.of(context).textTheme.headline1,
        children: [
          TextSpan(
            text: " Academy".toUpperCase(),
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
