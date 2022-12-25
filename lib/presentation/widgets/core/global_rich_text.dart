import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';

class GlobalRichText extends StatelessWidget {
  const GlobalRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return             RichText(
      text: TextSpan(
        text: "elmotatawera".toUpperCase(),
        style: Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: SizeManager.size22,
          fontWeight: FontWeight.bold
        ),
        children: [
          TextSpan(
            text: " Academy".toUpperCase(),
            style: Theme.of(context).textTheme.caption!.copyWith(
                fontSize: SizeManager.size22,
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
