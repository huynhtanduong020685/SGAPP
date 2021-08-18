import 'package:flutter/material.dart';
import 'package:infixedu/utils/Utils.dart';

class CalendarAndEvent extends StatefulWidget {
  const CalendarAndEvent({key}) : super(key: key);

  @override
  _CalendarAndEventState createState() => _CalendarAndEventState();
}

class _CalendarAndEventState extends State<CalendarAndEvent> {
  String name;

  DateTime firstDayOfPrevWeek;
  DateTime firstDayOfNextWeek;

  void initState() {
    super.initState();
    name = getName();

    getThisWeekDates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 100,
              primary: false,
              centerTitle: false,
              title: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(
                            'assets/images/icons/student1.png',
                          ),
                          backgroundColor: Colors.white,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              name != null ? name : 'null',
                              style: TextStyle(
                                  color: const Color(0xff07509d),
                                  fontSize: 23.0),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              flexibleSpace: Image(
                image: AssetImage('assets/images/tool_bar_bg.png'),
                fit: BoxFit.fill,
                height: 100.0,
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            )),
        body: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF7dd3f7),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                      child: Text('CALENDAR & EVENT',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff07509d)))),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    getPrevWeekDates();
                  },
                  child: Text('prev week'),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    getThisWeekDates();
                  },
                  child: Text('TextButton'),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    getNextWeekDates();
                  },
                  child: Text('Next week'),
                ),
              ],
            ),
          ],
        ));
  }

  String getName() {
    Utils.getStringValue('full_name').then((value) {
      setState(() {
        name = value;
      });
    });
    return name;
  }

  void getThisWeekDates() {
    DateTime now = DateTime.now();

    int currentDay = now.weekday;
    DateTime sunday = now.subtract(Duration(days: currentDay));
    DateTime monday = now.subtract(Duration(days: currentDay - 1));
    DateTime tuesday = now.subtract(Duration(days: currentDay - 2));
    DateTime wednesday = now.subtract(Duration(days: currentDay - 3));
    DateTime thursday = now.subtract(Duration(days: currentDay - 4));
    DateTime friday = now.subtract(Duration(days: currentDay - 5));
    DateTime saturday = now.subtract(Duration(days: currentDay - 6));

    setState(() {
      firstDayOfNextWeek = now.subtract(Duration(days: currentDay - 7));
      firstDayOfPrevWeek = now.subtract(Duration(days: currentDay + 7));
    });
  }

  void getNextWeekDates() {
    DateTime now = firstDayOfNextWeek;

    int currentDay = 0;
    DateTime sunday = now.subtract(Duration(days: currentDay));
    DateTime monday = now.subtract(Duration(days: currentDay - 1));
    DateTime tuesday = now.subtract(Duration(days: currentDay - 2));
    DateTime wednesday = now.subtract(Duration(days: currentDay - 3));
    DateTime thursday = now.subtract(Duration(days: currentDay - 4));
    DateTime friday = now.subtract(Duration(days: currentDay - 5));
    DateTime saturday = now.subtract(Duration(days: currentDay - 6));

    setState(() {
      firstDayOfNextWeek = now.subtract(Duration(days: currentDay - 7));
      firstDayOfPrevWeek = now.subtract(Duration(days: currentDay + 7));
    });

    print('sunday: ${sunday}');
    print('saturday: ${saturday}');
  }

  void getPrevWeekDates() {
    DateTime now = firstDayOfPrevWeek;

    int currentDay = 0;
    DateTime sunday = now.subtract(Duration(days: currentDay));
    DateTime monday = now.subtract(Duration(days: currentDay - 1));
    DateTime tuesday = now.subtract(Duration(days: currentDay - 2));
    DateTime wednesday = now.subtract(Duration(days: currentDay - 3));
    DateTime thursday = now.subtract(Duration(days: currentDay - 4));
    DateTime friday = now.subtract(Duration(days: currentDay - 5));
    DateTime saturday = now.subtract(Duration(days: currentDay - 6));

    setState(() {
      firstDayOfNextWeek = now.subtract(Duration(days: currentDay - 7));
      firstDayOfPrevWeek = now.subtract(Duration(days: currentDay + 7));
    });

    print('sunday: ${sunday}');
    print('saturday: ${saturday}');
  }
}
