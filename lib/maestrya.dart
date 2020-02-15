library maestrya;

import 'package:flutter/material.dart';

class Maestrya {
  List<Widget> handleWidgets(list) {
    List<Widget> childrenWidgets = [];
    for (final item in list) {
      final value = new GenericStringDynamicInferface(item);
      if (item['type'] == 'text') {
        childrenWidgets.add(TextWidget(params: value));
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
