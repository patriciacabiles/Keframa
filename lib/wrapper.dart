import 'package:flutter/material.dart';
// import 'package:keframa/models/user.dart';
// import 'package:keframa/pages/auth/authenticate.dart';
// import 'package:keframa/pages/home/home.dart';
import 'package:keframa/pages/landing_page.dart';
// import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<User>(context);
    // print(user);
    // return either Home or Authenticate widget
    // if (user == null) {
    //   return Authenticate();
    // }
    return LandingPage();
  }
}
