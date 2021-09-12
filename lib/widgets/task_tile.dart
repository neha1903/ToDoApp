import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final Function onLongPressCallback;
  final String text;
  final bool checkboxState;
  final Function checkboxCallback;
  TaskTile({
    required this.text,
    required this.checkboxState,
    required this.checkboxCallback,
    required this.onLongPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        onLongPressCallback();
      },
      title: Text(
        text,
        style: TextStyle(
          decoration:
              checkboxState ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent.shade100,
        value: checkboxState,
        onChanged: (value) {
          checkboxCallback(value);
        },
      ),
    );
  }
}
