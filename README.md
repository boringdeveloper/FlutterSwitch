# flutter_switch

A Custom Switch package created for Flutter.

## Give the repo some :heart: and :star: to support the project

 [![GitHub followers](https://img.shields.io/github/followers/boringdeveloper.svg?style=social&label=Follow)](https://github.com/boringdeveloper)

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
flutter_switch: <latest_version>
```

Import in your project:
```dart
import 'package:flutter_switch/flutter_switch.dart';
```

## Sample Usage
```dart
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool status = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  bool status5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterSwitch Demo"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Default"),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterSwitch(
                  value: status1,
                  onToggle: (val) {
                    setState(() {
                      status1 = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Value: $status1",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text("Custom Colors"),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterSwitch(
                  activeColor: Colors.red,
                  inactiveColor: Colors.red[200],
                  value: status2,
                  onToggle: (val) {
                    setState(() {
                      status2 = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Value: $status2",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text("With 'On' and 'Off' text and custom text colors"),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterSwitch(
                  showOnOff: true,
                  activeTextColor: Colors.black,
                  inactiveTextColor: Colors.blue[50],
                  value: status3,
                  onToggle: (val) {
                    setState(() {
                      status3 = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Value: $status3",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text("Custom size"),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterSwitch(
                  width: 55.0,
                  height: 25.0,
                  valueFontSize: 12.0,
                  toggleSize: 18.0,
                  value: status4,
                  onToggle: (val) {
                    setState(() {
                      status4 = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Value: $status4",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text("Custom border radius and padding"),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterSwitch(
                  width: 125.0,
                  height: 55.0,
                  valueFontSize: 25.0,
                  toggleSize: 45.0,
                  value: status5,
                  borderRadius: 30.0,
                  padding: 8.0,
                  showOnOff: true,
                  onToggle: (val) {
                    setState(() {
                      status5 = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Value: $status5",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```
## Demo

 ![flutter_switch]() 


## Developed By

```
Nichole John Romero
```

<a href="https://www.linkedin.com/in/nichole-john-talban-romero/"><img src="https://image.flaticon.com/icons/svg/174/174848.svg" width="60"></a>
<a href="https://www.facebook.com/nickrgamer04/"><img src="https://image.flaticon.com/icons/svg/174/174857.svg" width="60"></a>

# 📃 License

    BSD 3-Clause License

    Copyright (c) 2020, Nichole John Romero
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

        1. Redistributions of source code must retain the above copyright notice, this
        list of conditions and the following disclaimer.

        2. Redistributions in binary form must reproduce the above copyright notice,
        this list of conditions and the following disclaimer in the documentation
        and/or other materials provided with the distribution.

        3. Neither the name of the copyright holder nor the names of its
        contributors may be used to endorse or promote products derived from
        this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
    FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
    DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
    SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
    OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
    OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
