library maestrya;

import 'package:flutter/material.dart';

class Maestrya {
  List<Widget> handleWidgets(list) {
    List<Widget> childrenWidgets = [];
    for (final item in list) {
      final value = new GenericStringDynamicInferface(item);
      if (item['type'] == 'text') {
        childrenWidgets.add(TextWidget(params: value));
      } else if (item['type'] == 'input') {
        childrenWidgets.add(InputWidgetState(params: value));
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

