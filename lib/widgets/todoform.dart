import 'package:flutter/material.dart';

class todoform extends StatelessWidget {
  final String title = "";
  final String description = "";
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final ValueChanged<String> onsave;

  const todoform({
      Key? key,
    required this.onChangedTitle,
    required this.onChangedDescription,
    required this.onsave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildTitle(),
          ],
        ),
      );

  Widget buildTitle() => (TextFormField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Title",
        ),
      ));
}
