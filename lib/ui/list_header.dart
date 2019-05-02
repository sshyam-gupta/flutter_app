import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  final String headerText;
  final VoidCallback seeAllCallback;

  ListHeader(this.headerText, {Key key, this.seeAllCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return new Padding(
      padding: const EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
      child: new Row(
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: <Widget>[
          new Expanded(
            child: new Text(this.headerText,
              style: new TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Offstage(
            offstage: (this.seeAllCallback == null),
            child: new InkResponse(
              onTap: this.seeAllCallback,
              child: new Text('SEE ALL',
                style: new TextStyle(
                  color: theme.accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
