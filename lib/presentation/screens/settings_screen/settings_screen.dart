import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/constants.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/global_text.dart';
import 'package:sizer/sizer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(children: [
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, splashScreen);
            },
            leading: Icon(Icons.power_settings_new_outlined,color: Colors.red,),title:GlobalText(text: "log out"),
          ),
          Divider(height: 1,color: blackColor,),
        ],),
      ),
    );
  }
}
