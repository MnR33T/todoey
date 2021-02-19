
import 'package:flutter/cupertino.dart';
import 'package:todoey/screen/tasks_screen/task.dart';

class Data extends ChangeNotifier{
  List<Tasks> _tasks = [
    Tasks(task: 'hello')
  ];

  int getLength() => _tasks.length;

  Tasks getTaskAt(int index){
    return _tasks.elementAt(index);
  }

  void onTaskDone(int index){
   _tasks.elementAt(index).toggleDone();
    notifyListeners();
  }

  void onAddedTask(newValue){
    _tasks.add(Tasks(task: newValue));
    notifyListeners();
  }

  void removeTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }


}