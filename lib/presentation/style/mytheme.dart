import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:sizer/sizer.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
      fontFamily: "Poppins",
      appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          toolbarHeight: 15.h,
          titleTextStyle: TextStyle(color: ColorManager.blackColor)),
      scaffoldBackgroundColor: ColorManager.whiteColor,
      textTheme: TextTheme(
        caption: TextStyle(
          color: ColorManager.blackColor,
        ),
          headline1: TextStyle(
            color: ColorManager.darkOrangeColor,
          ),
          headline2: TextStyle(
            color: ColorManager.orangeColor,
          ),
          headline3: TextStyle(
            color: ColorManager.lightOrange,
          ),
          headline4: TextStyle(
            color: ColorManager.lightBink,
          ),
          headline5: TextStyle(
            color: ColorManager.terkwazColor,
          ),
          headline6: TextStyle(
            color: ColorManager.whiteColor,
          )));
}
