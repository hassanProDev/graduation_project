import 'package:flutter/cupertino.dart';

class HomeModel {
  String title;
  IconData iconData;
  Function onClick;

  HomeModel(
      {required this.title, required this.iconData, required this.onClick});
}
