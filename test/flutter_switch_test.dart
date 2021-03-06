import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/flutter_switch.dart';

void main() {
  group("FlutterSwitch", () {
    final alignToggleIndicatorFinder = find.byWidgetPredicate(
        (widget) => widget is Align && widget.child is Container);

    testWidgets(
      "displays the toggle indicator on the right if the given value is true",
      (WidgetTester tester) async {
        await tester.pumpWidget(
          _FlutterSwitchTest(
            status: true,
          ),
        );

        final align = tester.widget<Align>(alignToggleIndicatorFinder);

        expect(align.alignment, equals(Alignment.centerRight));
      },
    );

    testWidgets(
      "displays the toggle indicator on the left if the given value is false",
      (WidgetTester tester) async {
        await tester.pumpWidget(
          _FlutterSwitchTest(
            status: false,
          ),
        );

        final align = tester.widget<Align>(alignToggleIndicatorFinder);

        expect(align.alignment, equals(Alignment.centerLeft));
      },
    );

    testWidgets(
      "changes the toggle indicator alignment to the right on tap when the initial value is false",
      (WidgetTester tester) async {
        await tester.pumpWidget(
          new _FlutterSwitchTest(
            status: false,
          ),
        );

        await tester.tap(find.byType(FlutterSwitch));
        await tester.pumpAndSettle();

        final align = tester.widget<Align>(alignToggleIndicatorFinder);

        expect(align.alignment, equals(Alignment.centerRight));
      },
    );

    testWidgets(
      "changes the toggle indicator alignment to the left on tap when the initial value is true",
      (WidgetTester tester) async {
        await tester.pumpWidget(
          _FlutterSwitchTest(
            status: true,
          ),
        );

        await tester.tap(find.byType(FlutterSwitch));
        await tester.pumpAndSettle();

        final align = tester.widget<Align>(alignToggleIndicatorFinder);

        expect(align.alignment, equals(Alignment.centerLeft));
      },
    );

    testWidgets(
      "throws an assertion error when both switchBorder and activeSwitchBorder property is not null",
      (WidgetTester tester) async {
        await tester.pumpWidget(
          _FlutterSwitchTest(
            status: false,
            switchBorder: Border.all(
              color: Colors.black,
              width: 6.0,
            ),
            activeSwitchBorder: Border.all(
              color: Colors.blue,
              width: 6.0,
            ),
          ),
        );

        final assertion = tester.takeException();

        expect(assertion, isAssertionError);
      },
    );

    testWidgets(
      "throws an assertion error when both switchBorder and inactiveSwitchBorder property is not null",
      (WidgetTester tester) async {
        await tester.pumpWidget(
          _FlutterSwitchTest(
            status: false,
            switchBorder: Border.all(
              color: Colors.black,
              width: 6.0,
            ),
            inactiveSwitchBorder: Border.all(
              color: Colors.blueGrey,
              width: 6.0,
            ),
          ),
        );

        final assertion = tester.takeException();

        expect(assertion, isAssertionError);
      },
    );

    testWidgets(
      "throws an assertion error when both toggleBorder and activeToggleBorder property is not null",
      (WidgetTester tester) async {
        await tester.pumpWidget(
          _FlutterSwitchTest(
            status: false,
            toggleBorder: Border.all(
              color: Colors.black,
              width: 6.0,
            ),
            activeToggleBorder: Border.all(
              color: Colors.blue,
              width: 6.0,
            ),
          ),
        );

        final assertion = tester.takeException();

        expect(assertion, isAssertionError);
      },
    );

    testWidgets(
      "throws an assertion error when both toggleBorder and inactiveToggleBorder property is not null",
      (WidgetTester tester) async {
        await tester.pumpWidget(
          _FlutterSwitchTest(
            status: false,
            toggleBorder: Border.all(
              color: Colors.black,
              width: 6.0,
            ),
            inactiveToggleBorder: Border.all(
              color: Colors.blueGrey,
              width: 6.0,
            ),
          ),
        );

        final assertion = tester.takeException();

        expect(assertion, isAssertionError);
      },
    );
  });
}

/// A testbed class needed to test the [FlutterSwitch] widget.
class _FlutterSwitchTest extends StatefulWidget {
  final bool status;
  final Border? switchBorder;
  final Border? activeSwitchBorder;
  final Border? inactiveSwitchBorder;
  final Border? toggleBorder;
  final Border? activeToggleBorder;
  final Border? inactiveToggleBorder;

  _FlutterSwitchTest({
    Key? key,
    required this.status,
    this.switchBorder,
    this.activeSwitchBorder,
    this.inactiveSwitchBorder,
    this.toggleBorder,
    this.activeToggleBorder,
    this.inactiveToggleBorder,
  }) : super(key: key);

  @override
  __FlutterSwitchTestState createState() => __FlutterSwitchTestState();
}

class __FlutterSwitchTestState extends State<_FlutterSwitchTest> {
  bool _status = false;

  @override
  void initState() {
    super.initState();

    setState(() {
      _status = widget.status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FlutterSwitch(
          value: _status,
          switchBorder: widget.switchBorder,
          activeSwitchBorder: widget.activeSwitchBorder,
          inactiveSwitchBorder: widget.inactiveSwitchBorder,
          toggleBorder: widget.toggleBorder,
          activeToggleBorder: widget.activeToggleBorder,
          inactiveToggleBorder: widget.inactiveToggleBorder,
          onToggle: (val) {
            setState(() {
              _status = val;
            });
          },
        ),
      ),
    );
  }
}
