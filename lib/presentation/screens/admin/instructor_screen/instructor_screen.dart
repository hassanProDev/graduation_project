import 'package:flutter/material.dart';
import 'package:graduation_project/data/constants.dart';
import 'package:graduation_project/presentation/screens/admin/instructor_screen/widgets/instructor_item.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';
import 'package:graduation_project/presentation/widgets/core/arrow_back.dart';

class InstructorScreen extends StatelessWidget {
  const InstructorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBlack('Instructors',fontSize: SizeManager.size20,),
        leading: ArrowBack(),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) => InstructorItem(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, addInstructorScreen);
        },
        child: Icon(Icons.add),
        backgroundColor: ColorManager.darkOrangeColor,
      ),
    );  }
}
