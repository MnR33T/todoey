import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final newTaskText;
  final isChecked;
  final toggleBoxValue;
  final onLongPressFunction;
  TasksTile({this.newTaskText, this.isChecked, this.toggleBoxValue, this.onLongPressFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressFunction,
      title: Text(
        newTaskText,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleBoxValue,
      ),
    );
  }
}

