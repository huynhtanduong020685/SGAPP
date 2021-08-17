import 'package:flutter/material.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({key}) : super(key: key);

  @override
  _StudentScreenState createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('This is student screen', style: TextStyle(fontSize: 50)),
      ),
    );
  }
}
