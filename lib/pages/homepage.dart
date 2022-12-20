import 'package:flutter/material.dart';
import 'package:todo_app/main.dart';
import 'package:todo_app/widgets/addtodoDialog.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      Container(),
      Container(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        
        title: Text(
          'Todo App',
          selectionColor: Colors.white,
         
         
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        unselectedItemColor: Colors.white.withOpacity(0.75),
        selectedItemColor: Colors.white,
        currentIndex: selected,
        onTap: (index) => setState(() {
          selected=index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: "Todos",
            ),
           BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: "Completed",
            )
        ],
      ),
      body: tabs[selected],
      floatingActionButton: FloatingActionButton(
       child: Icon(Icons.add),
       shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
       ),
       backgroundColor: Colors.blue,
       onPressed: () => showDialog(
        context: context, 
        barrierDismissible: false,
        builder: (BuildContext context)=>new addtodoDialog() ,

        )
      ),
    );
  }
}
