import 'package:flutter/material.dart';

import '../../widgets/core/arrow_back.dart';
import '../../widgets/core/global_text.dart';

class InstructorScreen extends StatelessWidget {
  const InstructorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GlobalText(text: 'Instructors'),
        leading: ArrowBack(),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemBuilder: (context, index) => Container(),
        ),
      ),
    );  }
}
