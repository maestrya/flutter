
# Maestrya (Flutter package)

![pub package](https://img.shields.io/pub/v/maestrya.svg)

A Flutter package to automate render widgets (material) using JSON/Objects. 

## Install

To use this package, add `maestrya` as a <a href="https://flutter.io/platform-plugins/" target="_blank">dependency in your pubspec.yaml file</a>.

## Using

Add in your **pubspec.yaml**

```yaml
dependencies:
  flutter:
    sdk: flutter
  maestrya: ^0.0.1
```

Import the library via

```dart
import  'package:maestrya/maestrya.dart';
```

Use only 

```dart
List<Widget> maestryaWidgets = Maestrya().render(YOUR_OBJECT);
```

to return all widgets

<a href="https://github.com/maestrya/flutter-demo/blob/master/lib/main.dart" target="_blank">Show example in another project</a><br>

#### 'YOUR_OBJECT' example
<a href="https://pastebin.com/raw/Y0LVeEaz" target="_blank">Full example</a><br>
<a href="https://pastebin.com/raw/ivvnyuAh" target="_blank">Only body</a><br>

## Demo

<a href="https://play.google.com/store/apps/details?id=com.velrino.maestrya" target="_blank">Google Play Store</a><br>
<a href="https://github.com/maestrya/flutter-demo" target="_blank">GitHub Source</a><br>
<a href="https://maestrya.github.io/dashboard" target="_blank">Dashboard</a><br>
<a href="http://protected-ridge-35353.herokuapp.com/api/pages/page_test" target="_blank">API</a><br>
<a href="https://youtu.be/WxNpEnBg1mI" target="_blank">Video</a><br>


