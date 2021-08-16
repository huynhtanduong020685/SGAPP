import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infixedu/utils/Utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class StudentHome extends StatefulWidget {
  var _titles;
  var _images;

  StudentHome(this._titles, this._images);
  @override
  _StudentHomeState createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  String name;
  String rule;
  int _selectedIndex = 0;
  int _selectedTopBarIndex = 0;

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
        body: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
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
        ]),
        bottomNavigationBar: bottomNavBar());
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onTopNavbarTapped(int index) {
    setState(() {
      _selectedTopBarIndex = index;
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
        return ListView(
          children: [
            Container(
              height: 280,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/card-thumb.png"),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            child: Text("25/12/2021     14:30",
                                style: TextStyle(color: Colors.grey),
                                textAlign: TextAlign.end),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 280,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/card-thumb.png"),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            child: Text("25/12/2021     14:30",
                                style: TextStyle(color: Colors.grey),
                                textAlign: TextAlign.end),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 280,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/card-thumb.png"),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            child: Text("25/12/2021     14:30",
                                style: TextStyle(color: Colors.grey),
                                textAlign: TextAlign.end),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
        break;
      case 2:
        return Center(
            child: Text(
          'School life',
          style: TextStyle(fontSize: 45),
        ));
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