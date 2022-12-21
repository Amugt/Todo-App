import 'package:flutter/material.dart';

class todoform extends StatelessWidget {
  final String title = "";
  final String description = "";
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onsave;

  const todoform({
    Key? key,
    required this.onChangedTitle,
    required this.onChangedDescription,
    required this.onsave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisSize:MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildTitle(),
            SizedBox(
              height: 8,
            ),
            buildDescription(),
            SizedBox(
              height: 8,
            ),
            buildButton()
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

  Widget buildDescription() => (TextFormField(
        maxLines: 3,
        initialValue: description,
        onChanged: onChangedDescription,
        validator: (description) {
          if (description!.isEmpty) {
            return "Description cannot be empty";
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Description",
        ),
      ));

  Widget buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          onPressed: onsave,
          child: Text("Save"),
        ),
      );
}
