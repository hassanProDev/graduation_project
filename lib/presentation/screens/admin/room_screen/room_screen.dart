import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/screens/admin/room_screen/widgets/add_room_bottom_sheet.dart';
import 'package:graduation_project/presentation/screens/admin/room_screen/widgets/room_item.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_black.dart';
import 'package:graduation_project/presentation/widgets/core/arrow_back.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBlack('Rooms',fontSize: SizeManager.size20,),
        leading: ArrowBack(),

      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) => RoomItem(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorManager.darkOrangeColor,
        child: Icon(Icons.add),
        onPressed: (){
          roomBottomSheet(context);
        },
      ),
    );  }
}
