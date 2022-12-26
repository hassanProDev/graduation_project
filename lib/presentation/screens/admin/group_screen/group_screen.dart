
import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/screens/admin/group_screen/widgets/add_group_bottom_sheet.dart';
import 'package:graduation_project/presentation/screens/admin/group_screen/widgets/group_item.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';
import 'package:graduation_project/presentation/widgets/core/arrow_back.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBack(),
        title: TextBlack('Groups',fontSize: SizeManager.size20,),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) => GroupItem(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorManager.darkOrangeColor,
        child: Icon(Icons.add),
        onPressed: (){
          groupBottomSheet(context);
        },
      ),
    );  }
}
