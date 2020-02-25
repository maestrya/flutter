library maestrya;

import 'package:flutter/material.dart';
import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:maestrya/shared/resources/index.dart';
import 'package:maestrya/shared/widgets/index.dart';

class DefaultClickListener implements ClickListener{
  @override
  void onClicked(String event) {
    print("Receive click event: " + event);
  }

}

class Maestrya {
  final String jsonString;

  Maestrya(this.jsonString);
  
  render(list) {
    return {
      'body': this.renderBody(list['data']['body']['render']),
      'header': this.renderHeader(list['data']['header']),
    };
  }

  renderHeader(dynamic header) {
    return header['show']
        ? AppBar(
            backgroundColor: HexColor(header['color']),
            title: Text(header['title']['text']),
          )
        : null;
  }

  List<Widget> renderBody(list) {
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

  buildWidget(BuildContext context) async {
    return DynamicWidgetBuilder().build(jsonString, context, new DefaultClickListener());
  }
}
