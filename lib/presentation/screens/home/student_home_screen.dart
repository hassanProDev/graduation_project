import 'package:flutter/material.dart';
import 'package:graduation_project/data/local/home/student_home_data.dart';
import 'package:graduation_project/presentation/constants.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/home/items.dart';
import 'package:sizer/sizer.dart';

class StudentHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 4.w, mainAxisSpacing: 4.w),
              itemCount: homeItemList.length,
              itemBuilder: (context, index) => HomeItem(
                homeModel: homeItemList[index],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 3,
        onPressed: () {
          Navigator.pushNamed(context,chatScreen);
        },
        child: Icon(Icons.message,),
        backgroundColor: primaryColor,
      ),
    );
  }
}
