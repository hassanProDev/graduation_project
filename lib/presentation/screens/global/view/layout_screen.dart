import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/business_logic/cubit/buttom_nav/bottom_nav_cubit.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/customBottomNav.dart';
import 'package:graduation_project/presentation/widgets/core/global_rich_text.dart';
import 'package:sizer/sizer.dart';

class LayoutScreen extends StatelessWidget {
  String? userType;
  LayoutScreen({this.userType});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocConsumer<BottomNavCubit, BottomNavState>(
        listener: (context, state) {
          if(state is BottomNavChangetab){
            print("tab changed");
          }
        },
        builder: (context, state) {
          BottomNavCubit myCubit=BlocProvider.of(context);
          myCubit.userDashBoard(userType!);
          return Scaffold(
            appBar: AppBar(
              title: GlobalRichText(),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: myCubit.tabs[myCubit.index],
            ),
            backgroundColor: ColorManager.whiteColor,
            bottomNavigationBar: CustomBottomNav(onTabChange: (value) {
              myCubit.changeTabs(value);
            },),
          );
        },
      ),
    );
  }
}
