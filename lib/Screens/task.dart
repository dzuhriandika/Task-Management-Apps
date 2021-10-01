import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("TASK LIST"),
        backgroundColor: kPrimaryColor,
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 5,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    child : Icon(Icons.library_books, size: 30, color: Colors.grey,),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text("Lorem Ipsum", style: TextStyle(fontSize: 20),),
                  ),
                ],),
            ),
          ],
        ),
      ),
    ),
  );
}
}
