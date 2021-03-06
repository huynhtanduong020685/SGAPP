import 'package:flutter/material.dart';
import 'package:infixedu/screens/new_student/studentScreen/Absent.dart';
import 'package:infixedu/screens/new_student/studentScreen/CalendarAndEvent.dart';
import 'package:infixedu/screens/new_student/studentScreen/ClinicScreen.dart';
import 'package:infixedu/screens/new_student/studentScreen/GradeBook.dart';
import 'package:infixedu/screens/new_student/studentScreen/StudentInfoPage.dart';
import 'package:infixedu/screens/new_student/studentScreen/gallery_screen.dart';
import 'package:infixedu/screens/new_student/studentScreen/survey.dart';

import 'DailyActivities.dart';
import 'StudentTransitions.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({key}) : super(key: key);

  @override
  _StudentScreenState createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Container(
              child: GridView.count(
                childAspectRatio: (100 / 165),
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 4,
                children: <Widget>[
                  Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 2,
                            color: const Color(0xFF7dd3f7),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            _navigate(1);
                          },
                          child: Image(
                              image: AssetImage(
                                  'assets/images/icons/calendar.png')),
                        ),
                      ),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Calendar & Event'.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff07509d)),
                          textAlign: TextAlign.center,
                        ),
                      )),
                    ],
                  )),
                  Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 2,
                            color: const Color(0xFF7dd3f7),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            _navigate(2);
                          },
                          child: Image(
                              image: AssetImage(
                                  'assets/images/icons/daily_activities.png')),
                        ),
                      ),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Daily Activities'.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff07509d)),
                          textAlign: TextAlign.center,
                        ),
                      ))
                    ],
                  )),
                  Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: const Color(0xFF7dd3f7),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              _navigate(3);
                            },
                            child: Image(
                                image: AssetImage(
                                    'assets/images/icons/grade_book.png')),
                          )),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Grade book'.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff07509d)),
                          textAlign: TextAlign.center,
                        ),
                      ))
                    ],
                  )),
                  Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 2,
                            color: const Color(0xFF7dd3f7),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            _navigate(4);
                          },
                          child: Image(
                              image: AssetImage(
                                  'assets/images/icons/std_absent.png')),
                        ),
                      ),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Absent'.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff07509d)),
                          textAlign: TextAlign.center,
                        ),
                      ))
                    ],
                  )),
                  Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 2,
                            color: const Color(0xFF7dd3f7),
                          ),
                        ),
                        child: Image(
                            image: AssetImage('assets/images/icons/menu.png')),
                      ),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Menu'.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff07509d)),
                          textAlign: TextAlign.center,
                        ),
                      ))
                    ],
                  )),
                  Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 2,
                            color: const Color(0xFF7dd3f7),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            _navigate(6);
                          },
                          child: Image(
                              image: AssetImage(
                                  'assets/images/icons/std_album.png')),
                        ),
                      ),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Photo Album'.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff07509d)),
                          textAlign: TextAlign.center,
                        ),
                      ))
                    ],
                  )),
                  Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: const Color(0xFF7dd3f7),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              _navigate(7);
                            },
                            child: Image(
                                image: AssetImage(
                                    'assets/images/icons/clinic.png')),
                          )),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Clinic'.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff07509d)),
                          textAlign: TextAlign.center,
                        ),
                      ))
                    ],
                  )),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              child: GridView.count(
                childAspectRatio: (100 / 50),
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffebf6ff),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: InkWell(
                        onTap: () {
                          _navigate_bottom(1);
                        },
                        child: Row(
                          children: <Widget>[
                            Image(
                                image: AssetImage(
                                    'assets/images/icons/std_info.png')),
                            Flexible(
                                child: Text(
                              'Student info'.toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xff07509d)),
                            ))
                          ],
                        ),
                      )),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffebf6ff),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Image(
                              image:
                                  AssetImage('assets/images/icons/camp.png')),
                          Flexible(
                              child: Text(
                            'Camp'.toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xff07509d)),
                          ))
                        ],
                      )),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffebf6ff),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Image(
                              image: AssetImage('assets/images/icons/fee.png')),
                          Flexible(
                              child: Text(
                            'Fee & Payment'.toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xff07509d)),
                          ))
                        ],
                      )),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffebf6ff),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: InkWell(
                        onTap: () {
                          _navigate_bottom(4);
                        },
                        child: Row(
                          children: <Widget>[
                            Image(
                                image: AssetImage(
                                    'assets/images/icons/survey.png')),
                            Flexible(
                                child: Text(
                              'Survey'.toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xff07509d)),
                            ))
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigate_bottom(int num) {
    switch (num) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StudentInfoPage()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SurveyScreen()),
        );
        break;
      default:
        break;
    }
  }

  void _navigate(int num) {
    switch (num) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CalendarAndEvent()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DailyActivities()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GradeBookScreen()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AbsentScreen()),
        );
        break;
      case 6:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GalleryScreen()));
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ClinicPage()),
        );
        break;
      default:
        break;
    }
  }
}
