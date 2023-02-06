

import 'package:flutter/material.dart';
import 'package:graduation_project/data/constants.dart';

import 'home_model.dart';

List<HomeModel> instructorItemList=[

  HomeModel(title: "labs", iconData:Icons.room_preferences, onClick: (BuildContext context){
    Navigator.pushNamed(context, instructorLabsScreen);
  }),
  HomeModel(title: "lectures", iconData:Icons.abc, onClick: (BuildContext context){
    Navigator.pushNamed(context, instructorLectureScreen);
  }),
  HomeModel(title: "sections", iconData:Icons.abc_rounded, onClick: (BuildContext context){
    Navigator.pushNamed(context, instructorSectionScreen);
  }),
  // HomeModel(title: "events", iconData:Icons.lock_clock, onClick: (BuildContext context){
  //   Navigator.pushNamed(context, eventsScreen);
  // }),
  // HomeModel(title: "rooms", iconData:Icons.lock_clock, onClick: (BuildContext context){
  // }),
  // HomeModel(title: "subjects", iconData:Icons.lock_clock, onClick: (BuildContext context){
  //     Navigator.pushNamed(context, subjectScreen);
  // }),
  // HomeModel(title: "groups", iconData:Icons.lock_clock, onClick: (BuildContext context){
  //   Navigator.pushNamed(context, groupScreen);
  // }),
];