
import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/constants.dart';

import 'home_model.dart';

List<HomeModel> adminItemList=[
  HomeModel(title: "Instructors", iconData:Icons.person, onClick: (BuildContext context){
    Navigator.pushNamed(context, instructorScreen);
  }),
  HomeModel(title: "Students", iconData:Icons.group, onClick: (BuildContext context){
    Navigator.pushNamed(context, studentScreen);
  }),
  HomeModel(title: "room", iconData:Icons.room, onClick: (BuildContext context){
    Navigator.pushNamed(context, roomsScreen);
  }),
  // HomeModel(title: "subject", iconData:Icons.lock_clock, onClick: (BuildContext context){
  //   Navigator.pushNamed(context, subjectScreen);
  // }),
  HomeModel(title: "groups", iconData:Icons.lock_clock, onClick: (BuildContext context){
    Navigator.pushNamed(context, groupScreen);
  }),
  HomeModel(title: "departments", iconData:Icons.lock_clock, onClick: (BuildContext context){
    Navigator.pushNamed(context, departmentScreen);
  }),
  HomeModel(title: "events", iconData:Icons.lock_clock, onClick: (BuildContext context){
    Navigator.pushNamed(context, adminEventsScreen);
  }),
];