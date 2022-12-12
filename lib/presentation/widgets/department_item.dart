

import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/widgets/core/global_text.dart';
import 'package:graduation_project/presentation/widgets/item_study/rich_item_text.dart';

class DepartmentItem extends StatelessWidget {
  const DepartmentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:RichItemText(titleText: 'code',text: '1',),
      title: GlobalText(text: 'management and information system'),
    );
  }
}
