import 'package:flutter/material.dart';
import 'package:infixedu/utils/Utils.dart';

class GradeBookScreen extends StatefulWidget {
  const GradeBookScreen({key}) : super(key: key);
  @override
  _GradeBookScreenState createState() => _GradeBookScreenState();
}

class _GradeBookScreenState extends State<GradeBookScreen>
    with SingleTickerProviderStateMixin {
  bool _checkbox = false;
  String name;
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            Center(
              child: Container(
                width: double.infinity,
                child: new Text(
                  "GRADE BOOK",
                  style: new TextStyle(
                    color: Color(0Xff13438f),
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                  color: Color(0xff7cd3f7),
                ),
                padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: Color(0xff7cd3f7),
                    tabs: [
                      Tab(
                        child: Text(
                          "WEEKLY SCORES",
                          style: TextStyle(
                              fontSize: 9,
                              color: Color(0xff13438f),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "SUBJECT SCORES",
                          style: TextStyle(
                              fontSize: 9,
                              color: Color(0xff13438f),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "PROGRESS SCORES",
                          style: TextStyle(
                              fontSize: 9,
                              color: Color(0xff13438f),
                              fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  )),
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      margin: EdgeInsets.all(15),
                      color: Color(0xFFEBF6FF),
                      shadowColor: Colors.blueGrey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Subject",
                                  style: TextStyle(
                                      color: Color(0xff13438f),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text('25/12/2021')
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Text(
                                    'Score:',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Text(
                                  '200-400',
                                  style: TextStyle(
                                      color: Color(0xff7cd3f7),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      margin: EdgeInsets.all(15),
                      color: Color(0xFFEBF6FF),
                      shadowColor: Colors.blueGrey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Subject",
                                  style: TextStyle(
                                      color: Color(0xff13438f),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text('25/12/2021')
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Text(
                                    'Score:',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Text(
                                  '200-400',
                                  style: TextStyle(
                                      color: Color(0xff7cd3f7),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      margin: EdgeInsets.all(15),
                      color: Color(0xFFEBF6FF),
                      shadowColor: Colors.blueGrey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Subject",
                                  style: TextStyle(
                                      color: Color(0xff13438f),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text('25/12/2021')
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Text(
                                    'Score:',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Text(
                                  '200-400',
                                  style: TextStyle(
                                      color: Color(0xff7cd3f7),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      margin: EdgeInsets.all(15),
                      color: Color(0xFFEBF6FF),
                      shadowColor: Colors.blueGrey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Subject",
                                  style: TextStyle(
                                      color: Color(0xff13438f),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text('25/12/2021')
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Text(
                                    'Score:',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Text(
                                  '200-400',
                                  style: TextStyle(
                                      color: Color(0xff7cd3f7),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                ListView(
                  children: [Text("Second Screen")],
                ),
                ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffebf6ff),
                          boxShadow: [
                            BoxShadow(color: Colors.grey),
                          ],
                        ),
                        child: GridView.count(
                          primary: false,
                          padding: const EdgeInsets.all(20),
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 30,
                          crossAxisCount: 2,
                          children: <Widget>[
                            Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff7cd3f7), width: 2),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: const Text(
                                  "TERM 1",
                                  style: TextStyle(
                                      color: Color(0xff7cd3f7),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ))),
                            Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff7cd3f7), width: 2),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: const Text(
                                  "TERM 2",
                                  style: TextStyle(
                                      color: Color(0xff7cd3f7),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ))),
                            Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff7cd3f7), width: 2),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: const Text(
                                  "TERM 3",
                                  style: TextStyle(
                                      color: Color(0xff7cd3f7),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ))),
                            Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff7cd3f7), width: 2),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: const Text(
                                  "TERM 4",
                                  style: TextStyle(
                                      color: Color(0xff7cd3f7),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ))),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ))
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
}
