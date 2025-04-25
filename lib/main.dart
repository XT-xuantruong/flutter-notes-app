import 'package:flutter/material.dart';
import 'package:flutter_notes/screens/note_list_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_notes/models/notes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  await Hive.openBox<Note>('notes');
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const NoteListScreen(),
    );
  }
}