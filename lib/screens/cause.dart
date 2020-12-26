import 'package:flutter/material.dart';
import 'package:keframa/components/app_bar.dart';
import 'package:keframa/components/style.dart';

class CausePage extends StatefulWidget {
  @override
  _CausePageState createState() => _CausePageState();
}

class _CausePageState extends State<CausePage> {
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
                    'Cause',
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
