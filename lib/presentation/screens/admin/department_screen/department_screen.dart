import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';
import 'package:graduation_project/presentation/widgets/core/arrow_back.dart';

class DepartmentScreen extends StatelessWidget {
  const DepartmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBlack(
          'Departments',
          fontSize: SizeManager.size20,
        ),
        leading: ArrowBack(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemBuilder: (context, index) => Row(
            children: [
              Icon(Icons.room_preferences_rounded),
              TextBlack("deparment name"),
              TextBlack("Code : 5")
            ],
          ),
        ),
      ),
    );
  }
}
