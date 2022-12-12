import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/arrow_back.dart';
import 'package:graduation_project/presentation/widgets/core/global_item.dart';
import 'package:graduation_project/presentation/widgets/core/global_text.dart';
import 'package:sizer/sizer.dart';

class StudentSectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GlobalText(text: 'Sections',size: 18.sp,textColor: blackColor,),
        leading: ArrowBack(),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 2.w),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => GlobalItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
