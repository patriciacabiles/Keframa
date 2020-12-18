import 'package:flutter/material.dart';
import 'package:keframa/services/auth.dart';
import 'package:keframa/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:keframa/models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // listen to the stream so we know whenever a user signs in or out.
    return StreamProvider<User>.value(
      value: AuthService().authUser,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
