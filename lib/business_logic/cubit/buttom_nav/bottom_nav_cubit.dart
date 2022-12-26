import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:graduation_project/presentation/screens/admin/home/admin_home_screen.dart';
import 'package:graduation_project/presentation/screens/global/notes/notes_screen.dart';
import 'package:graduation_project/presentation/screens/global/settings_screen/settings_screen.dart';
import 'package:graduation_project/presentation/screens/instructor/home/instructor_home_screen.dart';
import 'package:graduation_project/presentation/screens/student/home/student_home_screen.dart';
import 'package:meta/meta.dart';

import '../../../data/constants.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  int index=0;
  void changeTabs(int index){
    this.index=index;
    emit(BottomNavChangetab());
  }

  List<Widget> tabs=[];
  void userDashBoard(String selectedUserType) {
    switch (selectedUserType) {
      case student:
        tabs = [
          StudentHomeScreen(),
          NotesScreen(),
          SettingsScreen(),
        ];
        break;
      case instructor:
        tabs = [
          InstructorHomeScreen(),
          NotesScreen(),
          SettingsScreen(),
        ];
        break;
      case admin:
        tabs = [
          AdminHomeScreen(),
          NotesScreen(),
          SettingsScreen(),
        ];
    }
  }
}
