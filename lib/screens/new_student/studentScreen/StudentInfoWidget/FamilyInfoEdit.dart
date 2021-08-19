import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infixedu/screens/new_student/CommonWidgets/AppBarWidget.dart';

enum SingingCharacter { Father, Guardian, PrimaryContact }
enum EnglishLevel { Beginner, GainingConfidence, Confidence, FLuent, Native }

class FamilyInfoEdit extends StatefulWidget {
  const FamilyInfoEdit({key}) : super(key: key);

  @override
  _FamilyInfoEditState createState() => _FamilyInfoEditState();
}

class _FamilyInfoEditState extends State<FamilyInfoEdit> {
  SingingCharacter _character = SingingCharacter.Father;
  EnglishLevel _level = EnglishLevel.Beginner;
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBarWidget(),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 10.0,left: 20.0,right: 20.0),
              child: Container(
                width: 315,
                height: 65,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  color: Color(0xFF9EDEFF),
                  borderRadius: BorderRadius.circular(
                    45.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    'STUDENT INFO',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF144385),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  child: Text(
                    "STUDENT INFO",
                    style: TextStyle(
                        color: Color(0xFF144385), fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color(0xFF9EDEFF))),
                ),
                FlatButton(
                  child: Text(
                    "FAMILY INFO",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  color: Color(0xFF9EDEFF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color(0xFF9EDEFF))),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: InputDecorator(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF))),
                  contentPadding: EdgeInsets.all(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Color(0xFF144385)),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['One', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Father'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.Father,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Guardian'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.Guardian,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Primary Contact'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.PrimaryContact,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: 20, bottom: 20.0, top: 10.0, right: 20.0),
                child: Text(
                  "FATHER INFORMATION",
                  style: TextStyle(
                      color: Color(0xFF9EDEFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: Color(0xFF144385)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "Full name"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: Color(0xFF144385)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "Nationality"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: Color(0xFF144385)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "Occupation"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: Color(0xFF144385)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "Company"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: Color(0xFF144385)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "Work address"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: Color(0xFF144385)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "Phone"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: Color(0xFF144385)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "Personal email"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: Color(0xFF144385)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "First Language"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(15.0)
                ),
                border: Border.all(
                    color: Color(0xFF9EDEFF), // Set border color
                    width: 1.0),
              ),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                          child: Text("English level: please check a box")),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text('Beginner'),
                              leading: Radio<EnglishLevel>(
                                value: EnglishLevel.Beginner,
                                groupValue: _level,
                                onChanged: (EnglishLevel value) {
                                  setState(() {
                                    _level = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('Gaining Confidence'),
                              leading: Radio<EnglishLevel>(
                                value: EnglishLevel.GainingConfidence,
                                groupValue: _level,
                                onChanged: (EnglishLevel value) {
                                  setState(() {
                                    _level = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text('Confidence'),
                              leading: Radio<EnglishLevel>(
                                value: EnglishLevel.Confidence,
                                groupValue: _level,
                                onChanged: (EnglishLevel value) {
                                  setState(() {
                                    _level = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('Fluent'),
                              leading: Radio<EnglishLevel>(
                                value: EnglishLevel.FLuent,
                                groupValue: _level,
                                onChanged: (EnglishLevel value) {
                                  setState(() {
                                    _level = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text('Native'),
                              leading: Radio<EnglishLevel>(
                                value: EnglishLevel.Native,
                                groupValue: _level,
                                onChanged: (EnglishLevel value) {
                                  setState(() {
                                    _level = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(15.0)
                  ),
                  border: Border.all(
                      color: Color(0xFF9EDEFF), // Set border color
                      width: 1.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Home address in Ho Chi Minh City*"),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  child: Text(
                    "SAVE",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  color: Color(0xFF9EDEFF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color(0xFF9EDEFF))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
