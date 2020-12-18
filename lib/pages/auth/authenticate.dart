import 'package:flutter/material.dart';
import 'package:keframa/pages/auth/register.dart';
import 'package:keframa/pages/auth/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = false;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    // default is to show the Register button.. otherwise Log in
    if (showSignIn) {
      return Login(toggleView: toggleView);
    }
    return Register(toggleView: toggleView);
  }
}
