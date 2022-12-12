
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sizer/sizer.dart';

import '../../style/colors.dart';
class CustomBottomNav extends StatelessWidget {
  Function? onTabChange;
  CustomBottomNav({this.onTabChange});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      padding: EdgeInsets.all(3.w),
      child:  GNav(
        onTabChange: (value){
          onTabChange!(value);
        },
          haptic: true, // haptic feedback
          tabBorderRadius: 3.w,
          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 450), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          activeColor: primaryColor, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: lightBink, // selected tab background color
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.w), // navigation bar padding
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
              textStyle: Theme.of(context).textTheme.headline3,
            ),
            GButton(
              icon: Icons.add,
              text: 'Notes',
              textStyle: Theme.of(context).textTheme.headline3,
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
              textStyle: Theme.of(context).textTheme.headline3,
            )
          ]
      ),
    );
  }
}
