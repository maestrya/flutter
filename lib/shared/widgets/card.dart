import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final dynamic data;

  // In the constructor, require a Person
  CardWidget({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paramsStyle = this.data['value'];

    final styles = {
      "scrollDirection": (paramsStyle['type'] == "horizontal")
          ? Axis.horizontal
          : Axis.vertical,
      "groupHeight": paramsStyle['style']['groupHeight'].toDouble(),
      "cardwidth": paramsStyle['style']['groupHeight'].toDouble(),
    };

    return Container(
        height: styles['groupHeight'],
        child: ListView.builder(
          scrollDirection: styles['scrollDirection'],
          itemCount: paramsStyle['cards'].length,
          itemBuilder: (BuildContext context, int i) => Card(
            child: Container(
              width: styles['cardwidth'],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(paramsStyle['cards'][i]['text']),
                ],
              ),
            ),
          ),
        ));
  }
}
