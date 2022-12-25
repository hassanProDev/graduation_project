import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/constants.dart';
import 'package:graduation_project/presentation/screens/registration/registration_screen.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/global_rich_text.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.pushNamedAndRemoveUntil(
          context, registrationScreen, (
          route) => false);
      timer.cancel();
    });

  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: ColorManager.whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlobalRichText(),
            SizedBox(height: SizeManager.size22*3,),
            LinearPercentIndicator(
              barRadius: Radius.circular(2.w),
              alignment: MainAxisAlignment.center,
              lineHeight: 7.0,
              width: 90.w,
              percent: 1,
              animation: true,
              animationDuration: 2500,
              progressColor: ColorManager.darkOrangeColor,
            ),
          ],
        ),
    );
  }
}
