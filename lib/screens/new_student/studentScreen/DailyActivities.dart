import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infixedu/screens/new_student/CommonWidgets/WeekCalendarWidget.dart';
import 'package:infixedu/screens/new_student/HomeStudent.dart';
import 'package:infixedu/screens/new_student/studentScreen/Widgets/AttendanceWidget.dart';
import 'package:infixedu/screens/new_student/studentScreen/Widgets/CommentWidget.dart';
import 'package:infixedu/screens/new_student/studentScreen/Widgets/HomeWorkWidget.dart';
import 'package:infixedu/utils/Utils.dart';

class DailyActivities extends StatefulWidget {
  const DailyActivities({key}) : super(key: key);
  @override
  State<DailyActivities> createState() => DailyActivitiesState();
}

class DailyActivitiesState extends State<DailyActivities>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  String name;
  int _selectedIndex = 0;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
    name = getName();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
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
                        backgroundImage:
                        AssetImage('assets/images/icons/student1.png'),
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            name != null ? name : 'null',
                            style: TextStyle(
                                color: const Color(0xff07509d), fontSize: 23.0),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            flexibleSpace: Image(
              image: AssetImage('assets/images/tool_bar_bg.png'),
              fit: BoxFit.cover,
              height: 100.0,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          )),
      body:
         DefaultTabController(
          length: 3,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0,top: 10.0),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF9EDEFF),
                    borderRadius: BorderRadius.circular(
                      45.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'DAILY ACTIVITIES',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF144385),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              WeekCalendarWidget(),
              Padding(
                padding:
                const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: BottomNavigationBar(
                      selectedItemColor: Color(0xff07509d),
                      unselectedItemColor: Color(0xff888888),
                      type: BottomNavigationBarType.fixed,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      items: const <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                          icon: ImageIcon(
                            AssetImage('assets/images/icons/17. DAILY ACTIVITIES.png'),
                            size: 45,
                          ),
                          label: '',
                        ),
                        BottomNavigationBarItem(
                          icon: ImageIcon(
                            AssetImage('assets/images/icons/HOMEWORK.png'),
                            size: 45,
                          ),
                          label: '',
                        ),
                        BottomNavigationBarItem(
                          icon: ImageIcon(
                            AssetImage('assets/images/icons/5. COMMENT.png'),
                            size: 45,
                          ),
                          label: '',
                        ),
                      ],
                      currentIndex: _selectedIndex,
                      onTap: _onItemTapped,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    Container(
                        width: (MediaQuery.of(context).size.width - 40) / 3,
                        child: Text(
                          'ATTENDANCE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: _selectedIndex == 0
                                  ? Color(0xff07509d)
                                  : Color(0xffffffff)),
                          textAlign: TextAlign.center,
                        )),
                    Container(
                        width: (MediaQuery.of(context).size.width - 40) / 3,
                        child: Text(
                          'HOMEWORK',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: _selectedIndex == 1
                                  ? Color(0xff07509d)
                                  : Color(0xffffffff)),
                          textAlign: TextAlign.center,
                        )
                    ),
                    Container(
                        width: (MediaQuery.of(context).size.width - 40) / 3,
                        child: Text(
                          'COMMENT',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: _selectedIndex == 2
                                  ? Color(0xff07509d)
                                  : Color(0xffffffff)),
                          textAlign: TextAlign.center,
                        )
                    )
                  ],
                ),
              ),
              Container(
                child: Expanded(child: viewlist(_selectedIndex)),
              ),
            ],
          ),
        ),

    );
  }
  String getName() {
    Utils.getStringValue('full_name').then((value) {
      setState(() {
        name = value;
      });
    });
    return name;
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget viewlist(_selectedIndex) {
    switch (_selectedIndex) {
      case 0:
        return AttendanceList();
        break;
      case 1:
        return HomeWorkList();
        break;
      case 2:
        return CommentList();
        break;
    }
  }
}
