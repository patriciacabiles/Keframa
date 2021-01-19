import 'package:flutter/material.dart';
import 'package:keframa/theme/style.dart';

// ignore: todo
// TODO: Should Appbar buttons be as below?
// Navigator.pushNamedAndRemoveUntil(routename, () => false);

class TextOnlyButton extends StatelessWidget {
  final String label;
  final String route;

  const TextOnlyButton({Key key, this.label, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(label, style: appBarTextStyle),
      hoverColor: Colors.lightBlue[50],
      splashColor: Colors.lightGreen[200],
      onPressed: () {
        Navigator.pushReplacementNamed(context, route);
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

class TitleButton extends StatelessWidget {
  final String label;
  final String route;

  const TitleButton({Key key, this.label, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(label, style: mainTitle),
      hoverColor: Colors.white70,
      onPressed: () {
        Navigator.pushReplacementNamed(context, route);
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
