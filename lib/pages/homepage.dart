import 'package:flutter/material.dart';
import 'package:todo_app/main.dart';

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
      body: Container(),
    );
  }
}
