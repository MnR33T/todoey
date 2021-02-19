import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              onChanged: (value) {
                newValue = value;
              },
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Provider.of<Data>(context, listen: false).onAddedTask(newValue);
                Navigator.pop(context);
              },
              minWidth: double.infinity,
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }

  var newValue;
}
