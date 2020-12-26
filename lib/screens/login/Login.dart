import 'package:flutter/material.dart';
import 'package:keframa/components/buttons.dart';
import 'package:keframa/services/auth.dart';
import 'package:keframa/theme/style.dart';

class LoginPage extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2.0,
        leading: SimpleTextOnlyButton(label: 'Home', route: '/'),
        title: Text(
          'Welcome to the London to Amsterdam Bike Ride 2021',
          style: appBarTextStyle,
        ),
        // actions: <Widget>[
        //   FlatButton.icon(
        //     icon: Icon(
        //       Icons.person,
        //       color: Colors.white,
        //     ),
        //     label: Text(
        //       'logout',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     onPressed: () async {
        //       await _auth.signOut();
        //     },
        //   )
        // ],
      ),
    );
  }
}
