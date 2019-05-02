import 'package:flutter/material.dart';
final colorBackground = const Color(0xFFF3F4F7);
final colorPrimary = const Color(0xFF35465B);

class ScreenBackground extends StatelessWidget {
  final Widget child;

  ScreenBackground({@required this.child});

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: colorBackground,
      child: new DefaultTextStyle(
        style: new TextStyle(
          color: colorPrimary,
          fontFamily: 'Roboto',
          fontSize: 16.0,
        ),
        child: child,
      ),
    );
  }
}
