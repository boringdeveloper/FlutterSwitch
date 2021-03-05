# flutter_switch
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

[![pub package](https://img.shields.io/pub/v/flutter_switch.svg)](https://pub.dev/packages/flutter_switch) [![pub points](https://badges.bar/flutter_switch/pub%20points)](https://pub.dev/packages/flutter_switch/score) [![popularity](https://badges.bar/flutter_switch/popularity)](https://pub.dev/packages/flutter_switch/score) [![likes](https://badges.bar/flutter_switch/likes)](https://pub.dev/packages/flutter_switch/score) <a href="https://github.com/boringdeveloper/FlutterSwitch/actions"><img src="https://img.shields.io/github/workflow/status/boringdeveloper/FlutterSwitch/Widget%20Test?label=build"></a>

An easy to implement custom switch created for Flutter. Give it a custom height and width, border for the switch and toggle, border radius, colors, toggle size, a choice to display an 'On' and 'Off' text and able to add an icon inside the toggle.

 [![GitHub followers](https://img.shields.io/github/followers/boringdeveloper.svg?style=social&label=Follow)](https://github.com/boringdeveloper)  <a href="https://www.linkedin.com/in/nichole-john-talban-romero/"><img src="https://image.flaticon.com/icons/svg/174/174857.svg" width="20"></a>

## Demo

 ![flutter_switch](https://media0.giphy.com/media/zQ7AwA3SiAzqiFCW1o/giphy.gif) 
 
 Video version: https://youtu.be/JqJnxjE6Efc


## Use this package as a library

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_switch: ^0.2.0
```

You can install packages from the command line with Flutter:
```bash
$ flutter pub get
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterSwitch Demo"),
      ),
      body: Center(
        child: Container(
          child: FlutterSwitch(
            width: 125.0,
            height: 55.0,
            valueFontSize: 25.0,
            toggleSize: 45.0,
            value: status,
            borderRadius: 30.0,
            padding: 8.0,
            showOnOff: true,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            },
          ),
        ),
      ),
    );
  }
}
```

## Want to Contribute?

    Contributions to this project is very much welcome. Let's work together to maintain and improve the project
    Simply Fork the repository, Commit and Push your changes and create a new Pull Request.

    If you have some suggestions, you can reach me at romero.nicholejohn@gmail.com

# License

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

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/boringdeveloper"><img src="https://avatars.githubusercontent.com/u/21273958?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Nickr</b></sub></a><br /><a href="https://github.com/boringdeveloper/FlutterSwitch/commits?author=boringdeveloper" title="Code">💻</a> <a href="https://github.com/boringdeveloper/FlutterSwitch/commits?author=boringdeveloper" title="Documentation">📖</a> <a href="#maintenance-boringdeveloper" title="Maintenance">🚧</a> <a href="https://github.com/boringdeveloper/FlutterSwitch/commits?author=boringdeveloper" title="Tests">⚠️</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!