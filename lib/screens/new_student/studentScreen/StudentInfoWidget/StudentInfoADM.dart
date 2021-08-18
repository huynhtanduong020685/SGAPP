import 'package:flutter/material.dart';

class StudentInfoADM extends StatefulWidget {
  const StudentInfoADM({key}) : super(key: key);

  @override
  _StudentInfoADMState createState() => _StudentInfoADMState();
}

String valueChoose;
List listItem = ["Item 1", "Item 2", "Item 3", "Item 4"];

class _StudentInfoADMState extends State<StudentInfoADM> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2, color: Color(0xFF9EDEFF)),
        ),
        child: ListView(
          padding: const EdgeInsets.only(bottom: 20),
          children: [
            Text(
              "PERSONAL INFO",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF9EDEFF),
                  fontWeight: FontWeight.bold),
            ),
            DropdownButton(
              hint: Text("ACADEMIC YEAR"),
              dropdownColor: Colors.grey,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 36,
              isExpanded: true,
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                    value: valueItem, child: Text(valueItem));
              }).toList(),
            ),
            DropdownButton(
              hint: Text("CLASS"),
              dropdownColor: Colors.grey,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 36,
              isExpanded: true,
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                    value: valueItem, child: Text(valueItem));
              }).toList(),
            ),
            DropdownButton(
              hint: Text("SECTION"),
              dropdownColor: Colors.grey,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 36,
              isExpanded: true,
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                    value: valueItem, child: Text(valueItem));
              }).toList(),
            ),
            DropdownButton(
              hint: Text("ACADEMIC NUMBER"),
              dropdownColor: Colors.grey,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 36,
              isExpanded: true,
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                    value: valueItem, child: Text(valueItem));
              }).toList(),
            ),
            DropdownButton(
              hint: Text("ROLL NUMBER"),
              dropdownColor: Colors.grey,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 36,
              isExpanded: true,
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                    value: valueItem, child: Text(valueItem));
              }).toList(),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'FIRST NAME'),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'MIDDLE NAME'),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'LAST AME'),
            ),
          ],
        ));
  }
}
