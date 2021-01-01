import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:keframa/services/auth.dart';
import 'package:keframa/components/loading.dart';
import 'package:keframa/theme/style.dart';

class Register extends StatefulWidget {
  // Constructor
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text fields
  String email = 'no email';
  String password = 'no password';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white70,
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black87),
              backgroundColor: Colors.white,
              elevation: 2.0,
              title: Text(
                'Keframa School Build: London to Amsterdam 2021',
                style: appBarTextStyle,
              ),
            ),
            body: Container(
              // TODO: put this in a row .. use better layout!!
              padding: EdgeInsets.symmetric(vertical: 120.0, horizontal: 350.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Register',
                        style: headerStyle,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    // email
                    TextFormField(
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      onChanged: (value) {
                        setState(() => email = value);
                      }, //capture iemail nfo in form fields
                    ),
                    SizedBox(height: 20.0),
                    // Password
                    TextFormField(
                      validator: (val) => val.length < 8
                          ? 'Enter a password 8+ characters long'
                          : null,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                      onChanged: (value) {
                        setState(() => password = value);
                      }, //capture info in form fields
                    ),
                    SizedBox(height: 5.0),
                    Text(error,
                        style:
                            TextStyle(color: Colors.red[800], fontSize: 14.0)),
                    SizedBox(height: 15.0),
                    RaisedButton(
                      color: Colors.blue[700],
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        // returns true if BOTH the validators in the email and password return true, otherwise false
                        if (_formKey.currentState.validate()) {
                          setState(() => loading = true);
                          dynamic result = await _auth
                              .registerWithEmailAndPassword(email, password);
                          if (result == null) {
                            setState(() {
                              error =
                                  'Oops! Could not login with those credentials. Have you registered?';
                              loading = false;
                            });
                          }
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Or',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextButton(
                      child: Text('Login'),
                      onPressed: () {
                        widget.toggleView();
                      },
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
