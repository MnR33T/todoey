import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/data.dart';
import 'screen/tasks_screen/tasks_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => Data(),
    child: MaterialApp(
      home: TasksScreen(),
    ),
  ));
}
