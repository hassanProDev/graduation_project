import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_dark_orange.dart';
import 'package:sizer/sizer.dart';
class AdminEventItem extends StatelessWidget {
  const AdminEventItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: Card(
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
                icon: Icons.share,
                label: 'Share',
              ),
            ],
          ),
          child:  ListTile(
            tileColor: ColorManager.lightBink,
            leading: Icon(Icons.person,color: ColorManager.terkwazColor,size: 35.sp,),
            title: TextDarkOrange("accounting",fontSize: SizeManager.size18,),
            subtitle: TextDarkOrange("5-5-2022",fontSize: SizeManager.size18,),
            trailing: TextDarkOrange("5:00 AM",fontSize: SizeManager.size18,),
          ),
        ),
      ),
    );
  }
}

void x(BuildContext c){

}