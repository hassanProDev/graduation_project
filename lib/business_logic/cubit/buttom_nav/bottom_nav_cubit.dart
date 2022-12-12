import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../../presentation/constants.dart';
import '../../../presentation/screens/home/admin_home_screen.dart';
import '../../../presentation/screens/home/instructor_home_screen.dart';
import '../../../presentation/screens/home/student_home_screen.dart';
import '../../../presentation/screens/notes/notes_screen.dart';
import '../../../presentation/screens/settings_screen/settings_screen.dart';

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
