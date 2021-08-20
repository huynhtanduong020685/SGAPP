import 'package:flutter/material.dart';
import 'package:infixedu/utils/Utils.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({key}) : super(key: key);
  Size get preferredSize => const Size.fromHeight(100);
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  String name;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
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
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage:
                      AssetImage('assets/images/icons/student1.png'),
                  backgroundColor: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 120,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        getName() != null ? getName() : 'null',
                        style: TextStyle(
                            color: const Color(0xff07509d), fontSize: 22.0),
                        softWrap: false,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          flexibleSpace: Image(
            image: AssetImage('assets/images/tool_bar_bg.png'),
            fit: BoxFit.fill,
            height: 100.0,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
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
}
