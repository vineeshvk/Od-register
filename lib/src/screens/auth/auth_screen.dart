import 'package:flutter/material.dart';
import 'package:od_register/src/colors/colors.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: PRIMARY_COLOR, body: _bodyContent());
  }

  Widget _bodyContent() {
    return Container(
        child: ListView(
      children: <Widget>[
        Container(margin: EdgeInsets.only(top: 82)),
        _welcomeText(),
        Container(margin: EdgeInsets.only(top: 20)),
        _descpText(),
        Container(margin: EdgeInsets.only(top: 100)),
        _loginText(),
        Container(margin: EdgeInsets.only(top: 30)),
        _usernameTextField(),
        Container(margin: EdgeInsets.only(top: 10)),
        _userpasswordField(),
        Container(margin: EdgeInsets.only(top: 10)),
        _loginButton()
      ],
    ));
  }

  Widget _welcomeText() {
    return Text(
      "Welcome",
      style: TextStyle(fontFamily: 'Raleway', fontSize: 36, color: WHITE_COLOR),
    );
  }

  Widget _descpText() {
    return Text(
      "On duty passes made simple.",
      style: TextStyle(fontSize: 18, color: GREY_COLOR),
    );
  }

  Widget _loginText() {
    return Text(
      "Login to your account",
      style: TextStyle(fontFamily: 'Raleway', fontSize: 24, color: WHITE_COLOR),
    );
  }

  Widget _usernameTextField() {
    return TextField(
        style: TextStyle(fontFamily: 'Raleway', color: WHITE_COLOR),
        decoration: InputDecoration(
          counterText: "Students enter register number. Teachers enter email.",
          counterStyle: TextStyle(color: GREY_COLOR),
          labelText: "username",
          labelStyle: TextStyle(
              fontFamily: 'Raleway', fontSize: 16, color: WHITE_COLOR),
          focusedBorder: _border(),
          hasFloatingPlaceholder: true,
          enabledBorder: _border(),
        ));
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: WHITE_COLOR, width: 0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)));
  }

  Widget _userpasswordField() {
    return TextField(
        obscureText: true,
        style: TextStyle(fontFamily: 'Raleway', color: WHITE_COLOR),
        decoration: InputDecoration(
          counterText: "Please enter your password. Default is 0000",
          counterStyle: TextStyle(color: GREY_COLOR),
          labelText: "password",
          labelStyle: TextStyle(
              fontFamily: 'Raleway', fontSize: 16, color: WHITE_COLOR),
          focusedBorder: _border(),
          hasFloatingPlaceholder: true,
          enabledBorder: _border(),
        ));
  }

  Widget _loginButton() {
    return Container(
        width: 320,
        height: 50,
        child: RaisedButton(
          onPressed: () {
            print("hai");
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 10,
          color: ACCENT_COLOR,
          child: Text(
            "LOG IN",
            style: TextStyle(color: WHITE_COLOR),
          ),
        ));
  }
}
