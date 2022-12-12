import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/presentation/screens/registration/signup_screen.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/core/global_rich_text.dart';
import 'login_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: GlobalRichText(),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            TabBar(
              unselectedLabelColor: blackColor,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: orangeColor,
              labelColor: primaryColor,
              labelStyle: GoogleFonts.poppins(fontSize: 15.sp,height: 3.sp,fontWeight: FontWeight.bold),
              tabs: [
                Text('Login'),
                Text('Sign Up'),
              ],
            ),
            Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TabBarView(
                    children: [
                      LoginScreen(),
                      SignUpScreen(),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
