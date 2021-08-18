// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:infixedu/screens/new_student/HomeStudent.dart';

// class StackOverState extends State<StackOver>
//     with SingleTickerProviderStateMixin {
//   TabController _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(length: 3, vsync: this);
//     _tabController.addListener(_handleTabSelection);
//     super.initState();
//   }

//   void _handleTabSelection() {
//     setState(() {});
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _tabController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(8.0),
//         child: DefaultTabController(
//           length: 3,
//           child: Column(
//             children: [
//               Container(
//                 height: 45,
//                 decoration: BoxDecoration(
//                   color: Color(0xFF9EDEFF),
//                   borderRadius: BorderRadius.circular(
//                     45.0,
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'DAILY ACTIVITIES',
//                     style: TextStyle(
//                         fontSize: 25,
//                         color: Color(0xFF144385),
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),

//               // give the tab bar a height [can change hheight to preferred height]
//               Container(
//                 // height: 45,
//                 decoration: BoxDecoration(
//                   color: Color(0xFF9EDEFF),
//                   borderRadius: BorderRadius.circular(
//                     45.0,
//                   ),
//                 ),
//                 child: TabBar(
//                   controller: _tabController,
//                   // give the indicator a decoration (color and border radius)
//                   indicator: BoxDecoration(
//                     borderRadius: BorderRadius.circular(
//                       25.0,
//                     ),
//                   ),
//                   labelColor: Color(0xFF144385),
//                   unselectedLabelColor: Colors.grey,
//                   tabs: [
//                     // first tab [you can add an icon using the icon property]
//                     Tab(
//                       child: Text(
//                         'ATTENDANCE',
//                         style: TextStyle(fontSize: 12),
//                       ),
//                       icon: Image.asset(
//                         'assets/images/icons/17. DAILY ACTIVITIES.png',
//                         width: 35,
//                         height: 35,
//                         color: _tabController.index == 0
//                             ? Color(0xFF144385)
//                             : Colors.grey,
//                       ),
//                     ),
//                     // second tab [you can add an icon using the icon property]
//                     Tab(
//                       child: Text(
//                         'HOMEWORK',
//                         style: TextStyle(fontSize: 12),
//                       ),
//                       icon: Image.asset(
//                         'assets/images/icons/HOMEWORK.png',
//                         width: 35,
//                         height: 35,
//                         color: _tabController.index == 1
//                             ? Color(0xFF144385)
//                             : Colors.grey,
//                       ),
//                     ),
//                     Tab(
//                       child: Text(
//                         'COMMENT',
//                         style: TextStyle(fontSize: 12),
//                       ),
//                       icon: Image.asset(
//                         'assets/images/icons/5. COMMENT.png',
//                         width: 35,
//                         height: 35,
//                         color: _tabController.index == 2
//                             ? Color(0xFF144385)
//                             : Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Expanded(
//                 child: TabBarView(
//                   controller: _tabController,
//                   children: [
//                     ListView(
//                       padding: const EdgeInsets.all(10),
//                       children: [
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(10),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "21/12/2021",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(10),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "22/12/2021",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(10),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "23/12/2021",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(10),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "24/12/2021",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(10),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "25/12/2021",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(10),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "26/12/2021",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(10),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "27/12/2021",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(10),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "28/12/2021",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     ListView(
//                       padding: const EdgeInsets.all(10),
//                       children: [
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(15),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "subject: Lorem ipsum",
//                                 ),
//                               ),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Text('1'),
//                                   Text(
//                                     'Content: First Homework',
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                   Text('25/12/2021',
//                                       style: TextStyle(color: Colors.grey)),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               )
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(15),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "subject: Lorem ipsum",
//                                 ),
//                               ),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Text('1'),
//                                   Text(
//                                     'Content: First Homework',
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                   Text('25/12/2021',
//                                       style: TextStyle(color: Colors.grey)),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               )
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(15),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "subject: Lorem ipsum",
//                                 ),
//                               ),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Text('1'),
//                                   Text(
//                                     'Content: First Homework',
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                   Text('25/12/2021',
//                                       style: TextStyle(color: Colors.grey)),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               )
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(15),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "subject: Lorem ipsum",
//                                 ),
//                               ),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Text('1'),
//                                   Text(
//                                     'Content: First Homework',
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                   Text('25/12/2021',
//                                       style: TextStyle(color: Colors.grey)),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               )
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(15),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "subject: Lorem ipsum",
//                                 ),
//                               ),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Text('1'),
//                                   Text(
//                                     'Content: First Homework',
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                   Text('25/12/2021',
//                                       style: TextStyle(color: Colors.grey)),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     ListView(
//                       padding: const EdgeInsets.all(10),
//                       children: [
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(15),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "Teacher comment",
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     EdgeInsets.only(left: 20.0, right: 20.0),
//                                 child: Text(
//                                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys '
//                                   'standard dummy text ever since the 1500s, when an unknown printer took a galley of type and '
//                                   'scrambled it to make a type specimen book. It has',
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                               ),
//                               Padding(
//                                   padding:
//                                       EdgeInsets.only(left: 20.0, right: 20.0),
//                                   child: Text(
//                                     'Read more',
//                                     style: TextStyle(
//                                       color: Color(0xFF144385),
//                                     ),
//                                   )),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   IconButton(
//                                       icon: Icon(Icons.add_circle),
//                                       color: Colors.grey,
//                                       tooltip: 'Like',
//                                       onPressed: () {}),
//                                   IconButton(
//                                       icon: Icon(Icons.add_comment),
//                                       color: Colors.grey,
//                                       tooltip: 'Comments',
//                                       onPressed: () {}),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               )
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(15),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "Teacher comment",
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     EdgeInsets.only(left: 20.0, right: 20.0),
//                                 child: Text(
//                                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys '
//                                   'standard dummy text ever since the 1500s, when an unknown printer took a galley of type and '
//                                   'scrambled it to make a type specimen book. It has',
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                               ),
//                               Padding(
//                                   padding:
//                                       EdgeInsets.only(left: 20.0, right: 20.0),
//                                   child: Text(
//                                     'Read more',
//                                     style: TextStyle(
//                                       color: Color(0xFF144385),
//                                     ),
//                                   )),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   IconButton(
//                                       icon: Icon(Icons.add_circle),
//                                       color: Colors.grey,
//                                       tooltip: 'Like',
//                                       onPressed: () {}),
//                                   IconButton(
//                                       icon: Icon(Icons.add_comment),
//                                       color: Colors.grey,
//                                       tooltip: 'Comments',
//                                       onPressed: () {}),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               )
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(15),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "Teacher comment",
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     EdgeInsets.only(left: 20.0, right: 20.0),
//                                 child: Text(
//                                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys '
//                                   'standard dummy text ever since the 1500s, when an unknown printer took a galley of type and '
//                                   'scrambled it to make a type specimen book. It has',
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                               ),
//                               Padding(
//                                   padding:
//                                       EdgeInsets.only(left: 20.0, right: 20.0),
//                                   child: Text(
//                                     'Read more',
//                                     style: TextStyle(
//                                       color: Color(0xFF144385),
//                                     ),
//                                   )),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   IconButton(
//                                       icon: Icon(Icons.add_circle),
//                                       color: Colors.grey,
//                                       tooltip: 'Like',
//                                       onPressed: () {}),
//                                   IconButton(
//                                       icon: Icon(Icons.add_comment),
//                                       color: Colors.grey,
//                                       tooltip: 'Comments',
//                                       onPressed: () {}),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               )
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(15),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "Teacher comment",
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     EdgeInsets.only(left: 20.0, right: 20.0),
//                                 child: Text(
//                                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys '
//                                   'standard dummy text ever since the 1500s, when an unknown printer took a galley of type and '
//                                   'scrambled it to make a type specimen book. It has',
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                               ),
//                               Padding(
//                                   padding:
//                                       EdgeInsets.only(left: 20.0, right: 20.0),
//                                   child: Text(
//                                     'Read more',
//                                     style: TextStyle(
//                                       color: Color(0xFF144385),
//                                     ),
//                                   )),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   IconButton(
//                                       icon: Icon(Icons.add_circle),
//                                       color: Colors.grey,
//                                       tooltip: 'Like',
//                                       onPressed: () {}),
//                                   IconButton(
//                                       icon: Icon(Icons.add_comment),
//                                       color: Colors.grey,
//                                       tooltip: 'Comments',
//                                       onPressed: () {}),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               )
//                             ],
//                           ),
//                         ),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           margin: EdgeInsets.all(15),
//                           color: Color(0xFFEBF6FF),
//                           shadowColor: Colors.blueGrey,
//                           elevation: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               const ListTile(
//                                 title: Text(
//                                   "Teacher comment",
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     EdgeInsets.only(left: 20.0, right: 20.0),
//                                 child: Text(
//                                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys '
//                                   'standard dummy text ever since the 1500s, when an unknown printer took a galley of type and '
//                                   'scrambled it to make a type specimen book. It has',
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                               ),
//                               Padding(
//                                   padding:
//                                       EdgeInsets.only(left: 20.0, right: 20.0),
//                                   child: Text(
//                                     'Read more',
//                                     style: TextStyle(
//                                       color: Color(0xFF144385),
//                                     ),
//                                   )),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   IconButton(
//                                       icon: Icon(Icons.add_circle),
//                                       color: Colors.grey,
//                                       tooltip: 'Like',
//                                       onPressed: () {}),
//                                   IconButton(
//                                       icon: Icon(Icons.add_comment),
//                                       color: Colors.grey,
//                                       tooltip: 'Comments',
//                                       onPressed: () {}),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
