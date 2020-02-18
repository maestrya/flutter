import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:maestrya/shared/widgets/index.dart';
import 'package:maestrya/maestrya.dart';
import './data.dart';

void main() {
  test('success render TextWidget', () {
    dynamic params = data['success']['body']['render'];

    List<Widget> childrenWidgets = [];
    childrenWidgets.add(TextWidget(data: params));

    final instance = Maestrya();
    List<Widget> result = instance.render(params);

    expect(result, result);
  });

  test('success render InputWidget', () {
    dynamic params = data['success']['body']['render'];

    List<Widget> childrenWidgets = [];
    childrenWidgets.add(InputWidget(data: params[1]));

    final instance = Maestrya();
    List<Widget> result = instance.render(params);

    expect(result, result);
  });

  test('success render DropdownButtonWidget', () {
    dynamic params = data['success']['body']['render'];


    List<Widget> childrenWidgets = [];
    childrenWidgets.add(DropdownWidget(data: params[3]));

    final instance = Maestrya();
    List<Widget> result = instance.render(params);

    expect(result, result);
  });

  test('success render CardWidget', () {
    dynamic params = data['success']['body']['render'];

    List<Widget> childrenWidgets = [];
    childrenWidgets.add(CardWidget(data: params[4]));

    final instance = Maestrya();
    List<Widget> result = instance.render(params);

    expect(result, result);
  });
}
