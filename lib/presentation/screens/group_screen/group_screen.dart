
import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBlack('Groups',fontSize: SizeManager.size20,),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemBuilder: (context, index) => Container(),
        ),
      ),
    );  }
}
