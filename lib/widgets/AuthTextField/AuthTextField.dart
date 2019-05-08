import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  AuthTextField({@required this.hintText, @required this.obscureText});

  final String hintText;
  final bool obscureText;
  @override
  _AuthTextFieldState createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      style: style,
      decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
  }
}
