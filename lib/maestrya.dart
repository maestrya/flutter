library maestrya;

import 'package:flutter/material.dart';

class Maestrya {
  List<Widget> handleWidgets(list) {
    List<Widget> childrenWidgets = [];
    for (final item in list) {
      final value = GenericStringDynamicInferface(item);
      if (item['type'] == 'text') {
        childrenWidgets.add(TextWidget(params: value));
      } else if (item['type'] == 'input') {
        childrenWidgets.add(InputWidgetState(params: value));
      } else if (item['type'] == 'select') {
        childrenWidgets.add(DropdownButtonWidget(params: value));
      }
    }
    return childrenWidgets;
  }
}

class TextWidget extends StatelessWidget {
  final GenericStringDynamicInferface params;

  TextWidget({Key key, @required this.params}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(this.params.data['value']['text']));
  }
}

class GenericStringDynamicInferface {
  final Map<String, dynamic> data;

  GenericStringDynamicInferface(this.data);
}


class InputWidgetState extends StatelessWidget {
  final GenericStringDynamicInferface params;

  // In the constructor, require a Person
  InputWidgetState({Key key, @required this.params}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: params.data['value']['name'],
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class DropdownButtonWidget extends StatefulWidget {
  final GenericStringDynamicInferface params;

  DropdownButtonWidget({Key key, @required this.params}) : super(key: key);

  @override
  DropdownButtonWidgetState createState() =>
      DropdownButtonWidgetState(params: null);
}

class DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String dropdownValue = 'One';
  final GenericStringDynamicInferface params;

  // In the constructor, require a Person
  DropdownButtonWidgetState({Key key, @required this.params});

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