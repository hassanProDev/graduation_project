import 'package:flutter/material.dart';
import 'package:graduation_project/data/local/home/instructor_home_data.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/home/items.dart';

import '../chat/chat_screen.dart';

class InstructorHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: instructorItemList.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) =>
                  HomeItem(homeModel: instructorItemList[index]),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 3,
        onPressed: () {
          Navigator.pushNamed(context,ChatScreen.routeName);
        },
        child: Icon(Icons.message,),
        backgroundColor: ColorManager.orangeColor,
      ),
    );
  }
}
