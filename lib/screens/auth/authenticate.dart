import 'package:flutter/material.dart';
import 'package:keframa/screens/auth/register.dart';
import 'package:keframa/screens/auth/sign_in.dart';

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
    // default is to show the Login button.. otherwise Register
    if (showSignIn) {
      return Register(toggleView: toggleView);
    }
    return Login(toggleView: toggleView);
  }
}
