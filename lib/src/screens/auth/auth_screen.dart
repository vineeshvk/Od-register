import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 26, 39, 1),
      body: _welcomeText(),
    );
  }

  Widget _welcomeText() {
    return Text(
      "Welcome",
      style: TextStyle(fontFamily: 'Raleway'),
    );
  }
}
