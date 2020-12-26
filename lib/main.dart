import 'package:flutter/material.dart';
import 'package:keframa/screens/auth/sign_in.dart';
import 'package:keframa/screens/cause/cause.dart';
import 'package:keframa/screens/home/landing_page.dart';
import 'package:keframa/screens/login/Login.dart';
import 'package:keframa/screens/route/route.dart';
import 'package:keframa/screens/team/team.dart';
import 'package:keframa/services/auth.dart';
import 'package:keframa/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:keframa/models/user.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => LandingPage(),
      '/route': (context) => RoutePage(),
      '/cause': (context) => CausePage(),
      '/team': (context) => TeamPage(),
      '/login': (context) => Login(),
    },
  ));
}
