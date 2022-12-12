import 'package:flutter/material.dart';

import '../../widgets/core/arrow_back.dart';
import '../../widgets/core/global_text.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GlobalText(text: 'Subjects'),
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
