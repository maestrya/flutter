library maestrya;

import 'package:flutter/material.dart';
import 'package:maestrya/shared/widgets/index.dart';

class Maestrya {
  List<Widget> render(list) {
    List<Widget> childrenWidgets = [];
    for (final item in list) {
      if (item['type'] == 'text') {
        childrenWidgets.add(TextWidget(data: item));
      } else if (item['type'] == 'input') {
        childrenWidgets.add(InputWidget(data: item));
      } else if (item['type'] == 'select') {
        childrenWidgets.add(DropdownWidget(data: item));
      } else if (item['type'] == 'cards') {
        childrenWidgets.add(CardWidget(data: item));
      }
    }
    return childrenWidgets;
  }
}
