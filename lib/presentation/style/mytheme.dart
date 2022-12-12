import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:sizer/sizer.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: 15.h,
        titleTextStyle: TextStyle(color: blackColor)
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
          headline1: GoogleFonts.poppins(
              fontSize: 15.sp,
              color: primaryColor,
              fontWeight: FontWeight.bold),
          headline2: GoogleFonts.poppins(
              fontSize: 15.sp, color: blackColor, fontWeight: FontWeight.bold),
          headline3: GoogleFonts.poppins(
              fontSize: 10.sp,
              color: primaryColor,
              fontWeight: FontWeight.bold,
          ),
          headline4: GoogleFonts.poppins(
            fontSize: 10.sp,
            color: terkwazColor,
            fontWeight: FontWeight.bold,
          ),
          headline5: GoogleFonts.poppins(
              fontSize: 12.sp, color: lightBink, fontWeight: FontWeight.bold),

          button: GoogleFonts.poppins(
              fontSize: 10.sp,
              color: terkwazColor,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline)));
}
