import 'package:flutter/material.dart';

class Tasks{
  String task;
  bool isDone;

  Tasks({@required this.task, this.isDone = false});

  toggleDone(){
    isDone = !isDone;
  }
}