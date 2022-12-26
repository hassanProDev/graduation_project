import 'package:flutter/material.dart';
import 'package:graduation_project/data/constants.dart';
import 'package:graduation_project/presentation/screens/admin/department_screen/department_screen.dart';
import 'package:graduation_project/presentation/screens/admin/events_screens/admin_events_screen.dart';
import 'package:graduation_project/presentation/screens/admin/group_screen/group_screen.dart';
import 'package:graduation_project/presentation/screens/admin/instructor_screen/instructor_screen.dart';
import 'package:graduation_project/presentation/screens/admin/room_screen/room_screen.dart';
import 'package:graduation_project/presentation/screens/admin/student_screen/student_screen.dart';
import 'package:graduation_project/presentation/screens/admin/subject_screen/subject_screen.dart';
import 'package:graduation_project/presentation/screens/global/chat/chat_screen.dart';
import 'package:graduation_project/presentation/screens/global/events_screens/events_screen.dart';
import 'package:graduation_project/presentation/screens/global/notes/add_note_screen.dart';
import 'package:graduation_project/presentation/screens/global/registration/registration_screen.dart';
import 'package:graduation_project/presentation/screens/global/splash.dart';
import 'package:graduation_project/presentation/screens/global/view/layout_screen.dart';
import 'package:graduation_project/presentation/screens/instructor/lab_screen/add_lab_screen.dart';
import 'package:graduation_project/presentation/screens/instructor/lab_screen/instructor_lab_screen.dart';
import 'package:graduation_project/presentation/screens/instructor/lecture_screens/add_lecture_screen.dart';
import 'package:graduation_project/presentation/screens/instructor/lecture_screens/instructor_lecture_screen.dart';
import 'package:graduation_project/presentation/screens/instructor/section_screens/add_section_screen.dart';
import 'package:graduation_project/presentation/screens/instructor/section_screens/instructor_sections_screen.dart';
import 'package:graduation_project/presentation/screens/student/lab_screen/student_lab_screen.dart';
import 'package:graduation_project/presentation/screens/student/lecture_screens/student_lecture_screen.dart';
import 'package:graduation_project/presentation/screens/student/section_screens/student_section_screen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      //================ global screens =================
      case splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case layoutScreen:
        String data = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => LayoutScreen(userType: data));
      case registrationScreen:
        return MaterialPageRoute(builder: (_) => RegistrationScreen());
      case chatScreen:
        return MaterialPageRoute(builder: (_) => ChatScreen());
      case eventsScreen:
        return MaterialPageRoute(builder: (_) => EventsScreen());
      case addNotesScreen:
        return MaterialPageRoute(builder: (_) => AddNoteScreen());

      //================ student screens ==================
      case studentLabsScreen:
        return MaterialPageRoute(builder: (_) => StudentLabsScreen());
      case studentLectureScreen:
        return MaterialPageRoute(builder: (_) => StudentLectureScreen());
      case studentSectionScreen:
        return MaterialPageRoute(builder: (_) => StudentSectionScreen());

      //================ instructor screens ================
      case instructorLabsScreen:
        return MaterialPageRoute(builder: (_) => InstructorLabsScreen());
      case addLabScreen:
        return MaterialPageRoute(builder: (_) => AddLabScreen());
      case instructorLectureScreen:
        return MaterialPageRoute(builder: (_) => InstructorLecturesScreen());
      case addLectureScreen:
        return MaterialPageRoute(builder: (_) => AddLectureScreen());
      case instructorSectionScreen:
        return MaterialPageRoute(builder: (_) => InstructorSectionScreen());
      case addSectionScreen:
        return MaterialPageRoute(builder: (context)=>AddSectionScreen());
      case adminEventsScreen:
        return MaterialPageRoute(builder: (_) => AdminEventsScreen());

        //================ admin screens =====================
      case departmentScreen:
        return MaterialPageRoute(builder: (_) => DepartmentScreen());
      // case adminEventsScreen:
      //   return MaterialPageRoute(builder: (_) => AdminEventsScreen());
      case groupScreen:
        return MaterialPageRoute(builder: (_) => GroupScreen());
      case subjectScreen:
        return MaterialPageRoute(builder: (_) => SubjectScreen());
      case instructorScreen:
        return MaterialPageRoute(builder: (_) => InstructorScreen());
      case studentScreen:
        return MaterialPageRoute(builder: (context)=>StudentScreen());
      case roomsScreen:
        return MaterialPageRoute(builder: (_) => RoomScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
