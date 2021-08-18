import 'package:flutter/material.dart';

class StudentInfo extends StatefulWidget {
  const StudentInfo({key}) : super(key: key);

  @override
  _StudentInfoState createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text("Name: Lorem Ipsum",style: TextStyle(fontSize: 25,color: Colors.black),),
        SizedBox(height: 15),
        Text("Age:",style: TextStyle(fontSize: 25,color: Colors.black)),
        SizedBox(height: 15),
        Text("Class:",style: TextStyle(fontSize: 25,color: Colors.black)),
        SizedBox(height: 15),
        Text("Teacher:",style: TextStyle(fontSize: 25,color: Colors.black)),
      ],
    );
  }
}
