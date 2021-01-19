import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:flutter/material.dart';
import 'package:keframa/theme/style.dart';
import 'package:keframa/services/auth.dart';
import 'package:keframa/components/loading.dart';

// todo: change the log in so it automatically prompts you to sign in with google .. only certain Gaccounts should be able to access this;
// work out how to restrict access ti specific Google accounts.
// change this to a card...
class Login extends StatefulWidget {
  // Constructor for widget
  final Function toggleView;
  Login({this.toggleView});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  fbAuth.User user;
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
                        'Log in',
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
                    // Password
                    SizedBox(height: 20.0),
                    // password
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
                      color: Colors.lightBlue[700],
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () async {
                        // returns true if BOTH the validators in the email and password return true, otherwise false
                        if (_formKey.currentState.validate()) {
                          setState(() => loading = true);
                          dynamic result = await _auth
                              .loginWithEmailAndPassword(email, password);
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
                    OutlineButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45)),
                      splashColor: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(
                                image: AssetImage('assets/googleLogo.jpg'),
                                height: 5),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Sign in with Google',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                      onPressed: () async {
                        _auth.signInGoogle().then((result) {
                          if (result == null) {
                            setState(() {
                              error =
                                  'Oops! Could not login with those credentials.';
                              loading = false;
                            });
                          }
                          Navigator.pushReplacementNamed(context, '/admin');
                        });
                      },
                    ),
                    // Center(
                    //   child: Text(
                    //     'Or',
                    //     style: TextStyle(fontSize: 15),
                    //   ),
                    // ),
                    SizedBox(height: 20),
                    // TextButton(
                    //   child: Text('Register'),
                    //   onPressed: () {
                    //     widget.toggleView();
                    //   },
                    // )
                  ],
                ),
              ),
            ),
          );
  }
}
