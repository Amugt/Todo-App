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
            SizedBox(height: 8,),
            buildDescription(),
          ],
        ),
      );

  Widget buildTitle() => (TextFormField(
      maxLines: 1,
        initialValue: title,
         onChanged: onChangedTitle,
        validator: (title) {
          if (title!.isEmpty) {
            return "the title cannot be empty";
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Title",
        ),
      ));

  buildDescription() => (TextFormField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Description",
        ),
      ));
}
