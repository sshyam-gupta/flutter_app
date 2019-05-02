import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  final String title;
  final String price;
  final VoidCallback onTap;
  final Widget child;

  FeaturedItem({
    @required this.title,
    @required this.price,
    this.onTap,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Expanded(
            child: new Material(
              elevation: 12.0,
              borderRadius: new BorderRadius.circular(10.0),
              child: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  this.child,
                  new Material(
                    type: MaterialType.transparency,
                    child: new InkWell(onTap: this.onTap),
                  ),
                ],
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
            child: new Text(this.title),
          ),
          new Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: new Text(this.price, style: new TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
