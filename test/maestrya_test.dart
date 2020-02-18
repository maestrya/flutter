import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:maestrya/maestrya.dart';
import './data.dart';

void main() {
  test('success render TextWidget', () {
    dynamic params = data['success']['body']['render'];

    final value = GenericStringDynamicInferface(params[0]);

    List<Widget> childrenWidgets = [];
    childrenWidgets.add(TextWidget(params: value));

    final instance = Maestrya();
    List<Widget> result = instance.render([params[0]]);

    expect(result, result);
  });

  test('success render InputWidget', () {
    dynamic params = data['success']['body']['render'];

    final value = GenericStringDynamicInferface(params[1]);

    List<Widget> childrenWidgets = [];
    childrenWidgets.add(InputWidget(params: value));

    final instance = Maestrya();
    List<Widget> result = instance.render([params[0]]);

    expect(result, result);
  });

  test('success render DropdownButtonWidget', () {
    dynamic params = data['success']['body']['render'];

    final value = GenericStringDynamicInferface(params[3]);

    List<Widget> childrenWidgets = [];
    childrenWidgets.add(DropdownButtonWidget(params: value));

    final instance = Maestrya();
    List<Widget> result = instance.render([params[3]]);

    expect(result, result);
  });

  test('success render CardWidget', () {
    dynamic params = data['success']['body']['render'];

    final value = GenericStringDynamicInferface(params[4]);

    List<Widget> childrenWidgets = [];
    childrenWidgets.add(CardWidget(params: value));

    final instance = Maestrya();
    List<Widget> result = instance.render([params[4]]);

    expect(result, result);
  });
}
