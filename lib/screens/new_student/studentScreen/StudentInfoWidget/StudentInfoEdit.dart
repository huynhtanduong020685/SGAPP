import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infixedu/screens/new_student/CommonWidgets/AppBarWidget.dart';

enum GenderSelect { Male, Female }

class StudentInfoEdit extends StatefulWidget {
  const StudentInfoEdit({key}) : super(key: key);

  @override
  _StudentInfoEditState createState() => _StudentInfoEditState();
}

class _StudentInfoEditState extends State<StudentInfoEdit> {
  TextEditingController _controller = TextEditingController();
  String dropdownValue = 'One';
  GenderSelect _gender = GenderSelect.Male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBarWidget(),
      body: Center(
          child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 20.0, bottom: 10.0, left: 20.0, right: 20.0),
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
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Color(0xFF9EDEFF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Color(0xFF9EDEFF))),
              ),
              FlatButton(
                child: Text(
                  "FAMILY INFO",
                  style: TextStyle(
                      color: Color(0xFF144385), fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Color(0xFF9EDEFF))),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: 20, bottom: 20.0, top: 10.0, right: 20.0),
              child: Text(
                "STUDENT INFORMATION",
                style: TextStyle(
                    color: Color(0xFF9EDEFF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20.0, bottom: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelStyle: TextStyle(color: Color(0xFF144385)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF9EDEFF)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF9EDEFF)),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              labelText: "First name(Given name)*"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0, bottom: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelStyle: TextStyle(color: Color(0xFF144385)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF9EDEFF)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF9EDEFF)),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              labelText: "Middle name(s) (if any)*"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0, bottom: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelStyle: TextStyle(color: Color(0xFF144385)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF9EDEFF)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    BorderSide(color: Color(0xFF9EDEFF)),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              labelText: "Last name (Family name)*"),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Color(0xFF9EDEFF), // Set border color
                          width: 1.0),
                    ),
                    child: Center(child: Text("")),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Expanded(
                    child: Text("Please capitalize the LAST NAME/FAMILY NAME")),
                Expanded(
                  child: FlatButton(
                    child: Text(
                      "PHOTO",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                    color: Color(0xFF9EDEFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Color(0xFF9EDEFF))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, bottom: 20.0, top: 20.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Color(0xFF144385)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  labelText: "Preferred name (or nick name)"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Color(0xFF144385)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        labelText: "Date of Birth(dd/mm/yy)"),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today_outlined),
                  color: Colors.grey,
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2019, 1),
                        lastDate: DateTime(2021, 12),
                        builder: (context, picker) {
                          return Theme(
                            //TODO: change colors
                            data: ThemeData.dark().copyWith(
                              colorScheme: ColorScheme.dark(
                                primary: Color(0xFF9EDEFF),
                                onPrimary: Colors.white,
                                surface: Color(0xFF9EDEFF),
                                onSurface: Colors.black,
                              ),
                              dialogBackgroundColor: Colors.white,
                            ),
                            child: picker,
                          );
                        }).then((selectedDate) {
                      if (selectedDate != null) {
                        _controller.text = selectedDate.toString();
                      }
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                border: Border.all(
                    color: Color(0xFF9EDEFF), // Set border color
                    width: 1.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Gender"),
                  Expanded(
                    child: ListTile(
                      title: const Text('Male'),
                      leading: Radio<GenderSelect>(
                        value: GenderSelect.Male,
                        groupValue: _gender,
                        onChanged: (GenderSelect value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text('Female'),
                      leading: Radio<GenderSelect>(
                        value: GenderSelect.Female,
                        groupValue: _gender,
                        onChanged: (GenderSelect value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Color(0xFF144385)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  labelText: "Nationality 1*"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Color(0xFF144385)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Color(0xFF9EDEFF)),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  labelText: "Nationality 2"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
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
                    items: <String>[
                      'Enrol in',
                      'One',
                      'Two',
                      'Free',
                      'Four',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Row(
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
          ),
        ],
      )),
    );
  }
}
