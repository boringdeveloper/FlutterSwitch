library flutter_switch;

import 'package:flutter/material.dart';

class FlutterSwitch extends StatefulWidget {
  final bool value, showOnOff;
  final ValueChanged<bool> onToggle;
  final Color activeColor,
      inactiveColor,
      activeTextColor,
      inactiveTextColor,
      toggleColor;
  final double width, height, toggleSize, valueFontSize, borderRadius, padding;
  final String activeText, inactiveText;

  const FlutterSwitch(
      {Key key,
      this.value,
      this.onToggle,
      this.activeColor = Colors.blue,
      this.inactiveColor = Colors.grey,
      this.activeTextColor = Colors.white70,
      this.inactiveTextColor = Colors.white70,
      this.toggleColor = Colors.white,
      this.width = 70.0,
      this.height = 35.0,
      this.toggleSize = 25.0,
      this.valueFontSize = 16.0,
      this.borderRadius = 20.0,
      this.padding = 4.0,
      this.showOnOff = false,
      this.activeText,
      this.inactiveText})
      : super(key: key);

  @override
  _FlutterSwitchState createState() => _FlutterSwitchState();
}

class _FlutterSwitchState extends State<FlutterSwitch>
    with SingleTickerProviderStateMixin {
  Animation _toggleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 60),
    );
    _toggleAnimation = AlignmentTween(
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
                ? widget.onToggle(true)
                : widget.onToggle(false);
          },
          child: Container(
            width: widget.width,
            height: widget.height,
            padding: EdgeInsets.all(widget.padding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              color: _toggleAnimation.value == Alignment.centerLeft
                  ? widget.inactiveColor
                  : widget.activeColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _toggleAnimation.value == Alignment.centerRight
                    ? Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: _activeText,
                        ),
                      )
                    : Container(),
                Align(
                  alignment: _toggleAnimation.value,
                  child: Container(
                    width: widget.toggleSize,
                    height: widget.toggleSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.toggleColor,
                    ),
                  ),
                ),
                _toggleAnimation.value == Alignment.centerLeft
                    ? Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          alignment: Alignment.centerRight,
                          child: _inactiveText,
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget get _activeText {
    if (widget.showOnOff) {
      return Text(
        (widget?.activeText != null) ? widget.activeText : "On",
        style: TextStyle(
          color: widget.activeTextColor,
          fontWeight: FontWeight.w900,
          fontSize: widget.valueFontSize,
        ),
      );
    }

    return Text("");
  }

  Widget get _inactiveText {
    if (widget.showOnOff) {
      return Text(
        (widget?.inactiveText != null) ? widget.inactiveText : "Off",
        style: TextStyle(
          color: widget.inactiveTextColor,
          fontWeight: FontWeight.w900,
          fontSize: widget.valueFontSize,
        ),
      );
    }

    return Text("");
  }
}
