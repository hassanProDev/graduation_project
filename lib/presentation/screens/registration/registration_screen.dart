import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/screens/registration/signup_screen.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/style/colors.dart';
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
              unselectedLabelColor: ColorManager.blackColor,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: ColorManager.orangeColor,
              labelColor: ColorManager.darkOrangeColor,
              labelStyle: TextStyle(height: 3,fontSize: SizeManager.size16,fontWeight: FontWeight.bold),
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
