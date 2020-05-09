library flutter_switch;

import 'package:flutter/material.dart';

class FlutterSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final String activeText;
  final String inactiveText;
  final Color activeTextColor;
  final Color inactiveTextColor;
  final double width, height, toggleSize, valueFontSize;

  const FlutterSwitch({
    Key key,
    this.value,
    this.onChanged,
    this.activeColor,
    this.inactiveColor = Colors.grey,
    this.activeText,
    this.inactiveText,
    this.activeTextColor = Colors.white70,
    this.inactiveTextColor = Colors.white70,
    this.width = 70.0,
    this.height = 35.0,
    this.toggleSize = 25.0,
    this.valueFontSize = 16.0,
  }) : super(key: key);

  @override
  _FlutterSwitchState createState() => _FlutterSwitchState();
}

class _FlutterSwitchState extends State<FlutterSwitch>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 60),
    );
    _circleAnimation = AlignmentTween(
      begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
      end: widget.value ? Alignment.centerLeft : Alignment.centerRight,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: _circleAnimation.value == Alignment.centerLeft
                    ? widget.inactiveColor
                    : widget.activeColor),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 4.0, bottom: 4.0, right: 4.0, left: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _circleAnimation.value == Alignment.centerRight
                      ? Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Text(
                              widget.activeText,
                              style: TextStyle(
                                  color: widget.activeTextColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: widget.valueFontSize),
                            ),
                          ),
                        )
                      : Container(),
                  Align(
                    alignment: _circleAnimation.value,
                    child: Container(
                      width: widget.toggleSize,
                      height: widget.toggleSize,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                  _circleAnimation.value == Alignment.centerLeft
                      ? Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            padding:
                                const EdgeInsets.only(left: 4.0, right: 5.0),
                            child: Text(
                              widget.inactiveText,
                              style: TextStyle(
                                  color: widget.inactiveTextColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: widget.valueFontSize),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
