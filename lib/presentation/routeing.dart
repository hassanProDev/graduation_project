import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/constants.dart';
import 'package:graduation_project/presentation/screens/chat/chat_screen.dart';
import 'package:graduation_project/presentation/screens/events_screens/admin_events_screen.dart';
import 'package:graduation_project/presentation/screens/events_screens/events_screen.dart';
import 'package:graduation_project/presentation/screens/lab_screen/add_lab_screen.dart';
import 'package:graduation_project/presentation/screens/lab_screen/instructor_lab_screen.dart';
import 'package:graduation_project/presentation/screens/lab_screen/student_lab_screen.dart';
import 'package:graduation_project/presentation/screens/lecture_screens/add_lecture_screen.dart';
import 'package:graduation_project/presentation/screens/lecture_screens/instructor_lecture_screen.dart';
import 'package:graduation_project/presentation/screens/lecture_screens/student_lecture_screen.dart';
import 'package:graduation_project/presentation/screens/notes/add_note_screen.dart';
import 'package:graduation_project/presentation/screens/section_screens/add_section_screen.dart';
import 'package:graduation_project/presentation/screens/section_screens/instructor_sections_screen.dart';
import 'package:graduation_project/presentation/screens/section_screens/student_section_screen.dart';
import 'package:graduation_project/presentation/screens/splash.dart';
import 'package:graduation_project/presentation/view/layout_screen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      //================ global screens =================
      case splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case layoutScreen:
        String data = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => LayoutScreen(userType: data));
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

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
