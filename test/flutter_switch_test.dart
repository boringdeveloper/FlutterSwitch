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
  });
}

/// A testbed class needed to test the [FlutterSwitch] widget.
class _FlutterSwitchTest extends StatefulWidget {
  final status;

  _FlutterSwitchTest({
    Key key,
    this.status,
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
