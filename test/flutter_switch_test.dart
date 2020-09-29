import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/flutter_switch.dart';

void main() {
  final alignToggleIndicatorFinder = find.byWidgetPredicate(
      (widget) => widget is Align && widget.child is Container);

  testWidgets(
    "displays the toggle indicator on the right if the given value is true",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        _FlutterSwitchTestbed(
          value: true,
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
        _FlutterSwitchTestbed(
          value: false,
        ),
      );

      final align = tester.widget<Align>(alignToggleIndicatorFinder);

      expect(align.alignment, equals(Alignment.centerLeft));
    },
  );
}

/// A testbed needed to test the switch widget.
class _FlutterSwitchTestbed extends StatelessWidget {
  /// A callback that is called when the switch is toggled.
  final ValueChanged<bool> onToggle;

  /// An initial value of the switch.
  final bool value;

  /// A default on toggle callback of the switch.
  static void _defaultOnToggle(bool value) {}

  /// Creates a new instance of this testbed.
  const _FlutterSwitchTestbed({
    Key key,
    this.onToggle = _defaultOnToggle,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FlutterSwitch(
          value: value,
          onToggle: (value) => {},
        ),
      ),
    );
  }
}
