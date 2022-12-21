import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todoform.dart';



class addtodoDialog extends StatefulWidget {
  const addtodoDialog({super.key});

  @override
  State<addtodoDialog> createState() => _addtodoDialogState();
}

class _addtodoDialogState extends State<addtodoDialog> {
  final formkey = GlobalKey<FormState>();
  String title = "";
  String description = "";

  @override
  Widget build(BuildContext context) {
    var key = null;
    return AlertDialog(
   

 content:Container(
  height: 290,
  child:Column(
    
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text("Add todo",
      style: TextStyle(
        fontSize: 21,
     
      ),
      ),
      const SizedBox(height: 7),
      todoform(
        
        onChangedTitle:(title)=> setState(()  => this.title=title),
        onChangedDescription:(description )=> setState(()  => this.description =description),
         onsave: () {  }, key: null,
        ),
       

    ],
   ),
 )





  
  );
  }}
