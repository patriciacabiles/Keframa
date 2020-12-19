import 'package:flutter/material.dart';

final appBarTextStyle = TextStyle(
    color: Colors.lightBlue[700],
    fontFamily: 'Overpass',
    fontSize: 18,
    fontWeight: FontWeight.w400);

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
