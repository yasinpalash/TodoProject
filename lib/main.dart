import 'package:flutter/material.dart';
import 'package:todo_project/home_screen.dart';

/// Todo_Application
/// CRUD - Create, Read, Update, Delete

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),

      home: const HomeScreen(),
    );
  }
}
