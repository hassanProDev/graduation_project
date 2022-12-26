import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';
import 'package:graduation_project/presentation/widgets/core/arrow_back.dart';
import 'package:sizer/sizer.dart';

class ChatScreen extends StatelessWidget {
  static const String routeName = "chatScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBlack( "Group Chat",fontSize: SizeManager.size20,),
        leading: ArrowBack(),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.w),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) => Container(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                isDense: true,
                hintText: "type message....",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.w),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorManager.orangeColor)
                ),
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.send,
                    color: ColorManager.orangeColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
