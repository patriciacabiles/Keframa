import 'package:flutter/material.dart';
import 'package:keframa/theme/style.dart';

class TextOnlyButton extends StatelessWidget {
  final String label;
  final String route;

  const TextOnlyButton({Key key, this.label, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(label, style: appBarTextStyle),
      hoverColor: Colors.lightBlue[50],
      splashColor: Colors.orangeAccent[700],
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}

class SimpleTextOnlyButton extends StatelessWidget {
  final String label;
  final String route;

  const SimpleTextOnlyButton({Key key, this.label, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(label, style: simpleAppBarTextStyle),
      hoverColor: Colors.white70,
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}

class BoxedButton extends StatelessWidget {
  final String label;

  const BoxedButton({Key key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.lightBlue[700],
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }
}
