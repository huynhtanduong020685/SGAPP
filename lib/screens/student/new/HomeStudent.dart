import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infixedu/screens/login/login.dart';
import 'package:infixedu/utils/Utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dailyActivities.dart';

class StudentHome extends StatefulWidget {
  var _titles;
  var _images;

  StudentHome(this._titles, this._images);

  @override
  _StudentHomeState createState() => _StudentHomeState();
}
class HomeStudent extends StatefulWidget{
  @override
  HomeState createState() => HomeState();
}
class StackOver extends StatefulWidget {
  @override
  State<StackOver> createState() => StackOverState();
}
class HomeState extends State<HomeStudent>{
  int _selectedTopBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
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
                  selectedItemColor: Color(0xff191970),
                  unselectedItemColor: Colors.blue,
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icons/new.png'),
                        size: 40,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icons/curriculum.png'),
                        size: 40,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icons/school-life.png'),
                        size: 40,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icons/chat.png'),
                        size: 40,
                      ),
                      label: '',
                    ),
                  ],
                  currentIndex: _selectedTopBarIndex,
                  onTap: _onTopNavbarTapped,
                ),
              ),
            ),
          ),
          Container(
            child: Expanded(child: checkviewpage(_selectedTopBarIndex)),
          )
        ],
      ),
    );
  }
  void _onTopNavbarTapped(int index) {
    setState(() {
      _selectedTopBarIndex = index;
    });
  }
}



Widget checkviewpage(selectedTopBarIndex) {
  switch (selectedTopBarIndex) {
    case 1:
      return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(60),
        crossAxisSpacing: 60,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("He'd have you all unravel at the"),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.teal[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.teal[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.teal[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.teal[600],
          ),
        ],
      );
      break;
    case 0:
      return Center(
          child: Text(
            'Main page',
            style: TextStyle(fontSize: 45),
          ));
      break;
    case 2:
      SizedBox(
        height: 10,
      );
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "What is Lorem Ipsum",
                      style: TextStyle(
                        color: Color(0xFF144385),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "There are many variations of passages of Lorem Ipsum available, but the majority have"
                          " suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If"
                          " you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden i"
                          "n the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks"
                          " as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, "
                          "combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. "
                          "The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "There are many variations of passages of Lorem Ipsum available, but the majority have"
                            " suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If"
                            " you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden i"
                            "n the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks"
                            " as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, "
                            "combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. "
                            "The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."),
                  ),
                ],
                addAutomaticKeepAlives: false,
              ),
            ),
          ],
        ),
      );
      break;
    default:
      return Center(
          child: Text(
            'Loading',
            style: TextStyle(fontSize: 45),
          ));
      break;
  }
}
class _StudentHomeState extends State<StudentHome> {
  String name;
  String rule;
  int _selectedIndex = 0;
  int _selectedTopBarIndex = 0;
  final tabs = [
    HomeStudent(),
    StackOver(),
    Center(
      child: Text('Chat'),
    ),
    Center(
      child: Text('Bus'),
    ),
    Center(
      child: Text('E-learning'),
    ),
    LoginWidget(),
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      Utils.getStringValue('rule').then((value) {
        rule = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: tabs[_selectedIndex],
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          FloatingActionButton(
            backgroundColor: const Color(0xFF7dd3f7),
            heroTag: Text("btn1"),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                "assets/images/icons/notification.png",
              ),
              backgroundColor: const Color(0xFF7dd3f7),
            ),
            onPressed: () {
              clear();
            },
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 20),
              child: FloatingActionButton(
                  backgroundColor: const Color(0xFF7dd3f7),
                  heroTag: Text("btn2"),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      "assets/images/icons/hotline.png",
                    ),
                    backgroundColor: const Color(0xFF7dd3f7),
                  ),
                  onPressed: () => launch('tel://84362134802'))),
        ]
            ),
        bottomNavigationBar: bottomNavBar());
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  Widget bottomNavBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF7dd3f7),
            selectedItemColor: Color(0xff191970),
            unselectedItemColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/home.png'),
                  size: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/student.png'),
                  size: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/chat.png'),
                  size: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/bus.png'),
                  size: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/elearning.png'),
                  size: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/setting.png'),
                  size: 40,
                ),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }



  Future<void> clear() async {
    // print(widget._images);
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
  }

  String getName() {
    Utils.getStringValue('full_name').then((value) {
      setState(() {
        name = value;
      });
    });
    return name;
  }

  Widget appBar() {
    return PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
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
                          getName() != null ? getName() : 'null',
                          style: TextStyle(
                              color: const Color(0xff191970), fontSize: 23.0),
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
        ));
  }
}
