import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_dark_orange.dart';
import 'package:sizer/sizer.dart';


class InstructorItem extends StatelessWidget {
  const InstructorItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Slidable(
        key: const ValueKey(0),
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: const [
            SlidableAction(
              onPressed: x,
              backgroundColor: ColorManager.redColor,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
            SlidableAction(
              onPressed: x,
              backgroundColor: ColorManager.terkwazColor,
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'Update',
            ),
          ],
        ),
        child:  ListTile(
          tileColor: ColorManager.lightBink,
          leading: Icon(Icons.person,color: ColorManager.terkwazColor,size: 35.sp,),
          title: TextDarkOrange("name ",fontSize: SizeManager.size18,),
          subtitle: TextDarkOrange("Address",fontSize: SizeManager.size18,),
          trailing: TextDarkOrange("phone",fontSize: SizeManager.size18,),
        ),
      ),
    );
  }
}

void x(BuildContext context){

}