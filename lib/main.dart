import 'package:flutter/material.dart';
import 'package:keframa/pages/landing_page.dart';
import 'package:keframa/pages/route.dart';
import 'package:keframa/pages/team.dart';
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
      '/team': (context) => TeamPage(),
    },
  ));
}
