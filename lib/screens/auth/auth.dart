import 'package:flutter/material.dart';
import '../../widgets/AuthTextField/index.dart';
import '../../widgets/AuthButton/index.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    final emailField = AuthTextField(obscureText: false, hintText: "Email");

    final passwordField =
        AuthTextField(obscureText: true, hintText: "Password");

    final signInButton = AuthButton(text: "SignIn");

    final signUpButton = AuthButton(text: "SignUp");

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                signInButton,
                SizedBox(
                  height: 15.0,
                ),
                signUpButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}
