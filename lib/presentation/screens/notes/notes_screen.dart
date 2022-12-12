import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/constants.dart';
import 'package:graduation_project/presentation/style/colors.dart';

import '../../widgets/notes/note_item.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => NoteItem(title: "any",description: "any",date: "5-525-25",),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, addNotesScreen);
        },
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
    );
  }
}
