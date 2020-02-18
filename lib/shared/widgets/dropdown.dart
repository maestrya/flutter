import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  final dynamic data;

  DropdownWidget({Key key, @required this.data}) : super(key: key);

  @override
  DropdownWidgetState createState() =>
      DropdownWidgetState(data: null);
}

class DropdownWidgetState extends State<DropdownWidget> {
  String dropdownValue = 'One';
  final dynamic data;

  DropdownWidgetState({Key key, @required this.data});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
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
    );
  }
}