import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screen/tasks_screen/tasks_tile.dart';

import '../../data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context, taskData, child) {
      return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return TasksTile(
              newTaskText:
                  taskData.getTaskAt(index).task,
              isChecked:
                  taskData.getTaskAt(index).isDone,
              toggleBoxValue: (value) {
                taskData.onTaskDone(index);
              },
              onLongPressFunction: (){
                taskData.removeTask(index);
              },
            );
          },
          itemCount: taskData.getLength());
    });
  }
}
