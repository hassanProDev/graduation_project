import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/screens/instructor/widgets/instructor_item_lesson.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';
import 'package:graduation_project/presentation/widgets/core/arrow_back.dart';
import 'package:sizer/sizer.dart';

class InstructorLabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBlack('labs',fontSize:SizeManager.size20,fontWeight: FontWeight.bold,),
        leading: ArrowBack(),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 2.w),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => InstructorItemLesson(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
      },
        child: Icon(Icons.add),
        backgroundColor: ColorManager.orangeColor,
      ),
    );
  }
}
