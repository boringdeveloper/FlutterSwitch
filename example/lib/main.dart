import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  bool status5 = false;
  bool status6 = false;
  bool status7 = true;

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
                  toggleColor: Colors.blueGrey[700],
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
            SizedBox(height: 20.0),
            Text("Custom text"),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterSwitch(
                  activeText: "All Good",
                  inactiveText: "Under Quarantine",
                  value: status6,
                  valueFontSize: 10.0,
                  width: 110,
                  borderRadius: 30.0,
                  showOnOff: true,
                  onToggle: (val) {
                    setState(() {
                      status6 = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Value: $status6",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text("Toon-like feel by using Borders"),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterSwitch(
                  width: 125.0,
                  height: 55.0,
                  valueFontSize: 25.0,
                  toggleSize: 45.0,
                  value: status7,
                  borderRadius: 30.0,
                  padding: 2.0,
                  switchBorder: Border.all(
                    color: Color.fromRGBO(2, 107, 206, 1),
                    width: 6.0,
                  ),
                  toggleBorder: Border.all(
                    color: Color.fromRGBO(2, 107, 206, 1),
                    width: 5.0,
                  ),
                  activeColor: Color.fromRGBO(51, 226, 255, 1),
                  inactiveColor: Colors.black38,
                  onToggle: (val) {
                    setState(() {
                      status7 = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Value: $status7",
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
