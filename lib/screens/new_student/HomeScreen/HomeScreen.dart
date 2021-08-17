import 'package:flutter/material.dart';
import 'package:infixedu/screens/new_student/HomeScreen/Widgets/Curriculum.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTopBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
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
    );
  }

  Widget checkviewpage(selectedTopBarIndex) {
    switch (selectedTopBarIndex) {
      case 1:
        return Curriculum();
        break;
      case 0:
        return Center(
            child: Text(
          'Main page',
          style: TextStyle(fontSize: 45),
        ));
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

  void _onTopNavbarTapped(int index) {
    setState(() {
      _selectedTopBarIndex = index;
    });
  }
}
