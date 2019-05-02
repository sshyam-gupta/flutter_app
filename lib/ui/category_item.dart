import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final VoidCallback onTap;
  final Widget child;

  CategoryItem(this.categoryName, {
    this.onTap,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new Material(
            type: MaterialType.circle,
            color: Colors.white,
            child: new InkWell(
              onTap: this.onTap,
              child: new AspectRatio(
                aspectRatio: 1.0,
                child: new Container(
                  padding: const EdgeInsets.all(28.0),
                  child: this.child,
                ),
              ),
            ),
          ),
          new Container(
            padding: const EdgeInsets.only(top: 8.0),
            alignment: Alignment.center,
            child: new Text(this.categoryName,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
