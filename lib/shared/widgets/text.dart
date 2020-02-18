import 'package:flutter/material.dart';
import 'package:maestrya/shared/resources/index.dart';

class TextWidget extends StatelessWidget {
  final dynamic data;

  TextWidget({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          this.data['value']['text'],
          style: TextStyle(
             color: HexColor(this.data['textColor']),
              height: checkDouble(this.data['height']),
              fontSize: checkDouble(this.data['size'])),
        ));
  }
}
