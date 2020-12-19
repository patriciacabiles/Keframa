import 'package:flutter/material.dart';
import 'package:keframa/shared/app_bar.dart';
import 'package:keframa/shared/style.dart';

class RoutePage extends StatefulWidget {
  @override
  _RoutePageState createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: MainAppBar(
        appBar: AppBar(),
      ),
      body: Center(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(120, 70, 300, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Route',
                    style: headerStyle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
