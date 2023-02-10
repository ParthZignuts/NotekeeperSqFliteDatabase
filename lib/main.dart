import 'package:flutter/material.dart';
import 'package:sql_database_project/screens/notesscreen.dart';
import 'package:sql_database_project/screens/nots_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.lime,
      ),
      home: const NotesScreen(),
    );
  }
}




