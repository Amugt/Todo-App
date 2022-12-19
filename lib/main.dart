import 'package:flutter/material.dart';

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
       home: todoapp(),
    );
  }
}


class todoapp extends StatelessWidget {

  const todoapp({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('Todo App',
            
            ),),
           body: Container(),
       );
  }
}


