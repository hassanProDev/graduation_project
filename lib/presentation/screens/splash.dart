import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/screens/registration/registration_screen.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/global_rich_text.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GlobalRichText(),
            LinearPercentIndicator(
              barRadius: Radius.circular(2.w),
              alignment: MainAxisAlignment.center,
              lineHeight: 7.0,
              width: 90.w,
              percent: 1,
              animation: true,
              animationDuration: 2500,
              progressColor: primaryColor,
            ),
          ],
        ),
        nextScreen: RegistrationScreen(),
        duration: 3000,
      ),
    );
  }
}
