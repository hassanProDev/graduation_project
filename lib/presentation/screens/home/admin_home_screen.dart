import 'package:flutter/material.dart';
import 'package:graduation_project/data/local/home/admin_home_data.dart';
import 'package:graduation_project/presentation/widgets/home/items.dart';

class AdminHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: adminItemList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => HomeItem(homeModel: adminItemList[index]),
            ),
          ),
        ],
      ),
    );
  }
}
