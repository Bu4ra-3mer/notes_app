import 'package:flutter/material.dart';
import 'package:notes_app/views/note_view.dart';

void main() {
  return runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),

      home: const NoteView(),
    );
  }
}
