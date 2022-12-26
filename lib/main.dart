import 'package:flutter/material.dart';
import 'package:graduation_project/data/constants.dart';
import 'package:graduation_project/presentation/routeing.dart';
import 'package:graduation_project/presentation/style/mytheme.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, oriantaion, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routers.generateRoute,
        initialRoute: splashScreen,
        theme: MyTheme.lightTheme,
      );
    });
  }
}
