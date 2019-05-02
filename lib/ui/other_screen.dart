import 'package:flutter/material.dart';
import './screen_background.dart';

class OtherScreen extends StatelessWidget {
  final String name;

  OtherScreen(this.name);

  @override
  Widget build(BuildContext context) {
    return new ScreenBackground(
      child: new Center(
        child: new Text(this.name, style: Theme
          .of(context)
          .textTheme
          .display3),
      ),
    );
  }
}
