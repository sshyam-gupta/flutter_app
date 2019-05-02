import 'package:flutter/material.dart';

class GridFeaturedItems extends StatelessWidget {
  final int crossAxisCount;
  final EdgeInsetsGeometry padding;
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  GridFeaturedItems({
    Key key,
    this.crossAxisCount: 3,
    this.padding,
    this.itemBuilder,
    this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rows = <TableRow>[];
    var cells = <Widget>[];
    for (int i = 0; i < this.itemCount; i++) {
      if (i > 0 && (i % this.crossAxisCount) == 0) {
        rows.add(new TableRow(children: new List.from(cells)));
        cells.clear();
      }
      cells.add(this.itemBuilder(context, i));
    }
    if (cells.length > 0) {
      if (this.crossAxisCount - cells.length > 0) {
        cells.addAll(new List.generate(this.crossAxisCount - cells.length, (i) => new Container()));
      }
      rows.add(new TableRow(children: new List.from(cells)));
    }
    Widget child = new Table(children: rows);
    if (this.padding != null) {
      child = new Padding(padding: this.padding, child: child);
    }
    return child;
  }
}

