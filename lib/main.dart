import 'package:flutter/material.dart';
import 'package:keframa/models/user.dart';
import 'package:keframa/screens/auth/sign_in.dart';
import 'package:keframa/screens/cause/cause.dart';
import 'package:keframa/screens/home/landing_page.dart';
import 'package:keframa/screens/route/route.dart';
import 'package:keframa/screens/team/team.dart';
import 'package:keframa/services/auth.dart';
import 'package:keframa/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().authUser,
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => LandingPage(),
          '/route': (context) => RoutePage(),
          '/cause': (context) => CausePage(),
          '/team': (context) => TeamPage(),
          '/admin': (context) => Wrapper(),
        },
      ),
    );
  }
}
