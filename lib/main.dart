import 'package:flutter/material.dart';
import 'package:todo_app/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo app',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
       home: homepage(),
    );
  }
}

