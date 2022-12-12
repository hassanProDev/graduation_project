import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/constants.dart';

import 'home_model.dart';

List<HomeModel> homeItemList = [
  HomeModel(
      title: "labs",
      iconData: Icons.room_preferences,
      onClick: (BuildContext context) {
        Navigator.pushNamed(context, studentLabsScreen);
      }),
  HomeModel(
      title: "lectures",
      iconData: Icons.abc,
      onClick: (BuildContext context) {
        Navigator.pushNamed(context, studentLectureScreen);
      }),
  HomeModel(
      title: "sections",
      iconData: Icons.abc_rounded,
      onClick: (BuildContext context) {
        Navigator.pushNamed(context, studentSectionScreen);
      }),
  HomeModel(
      title: "events",
      iconData: Icons.lock_clock,
      onClick: (BuildContext context) {
        Navigator.pushNamed(context, eventsScreen);
      }),
];
