import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/widgets/core/arrow_back.dart';
import 'package:graduation_project/presentation/widgets/core/global_item.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/core/app_text/text_black.dart';

class StudentLabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBlack('labs',fontSize:SizeManager.size22,fontWeight: FontWeight.bold,),
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
