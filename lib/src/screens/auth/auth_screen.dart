import 'package:flutter/material.dart';
import 'package:od_register/src/colors/colors.dart';
import 'package:od_register/src/screens/bloc/auth_bloc.dart';
import 'package:od_register/src/screens/student/dashboard.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PRIMARY_COLOR, body: _bodyContent(context));
  }

  Widget _bodyContent(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(margin: EdgeInsets.only(top: 60)),
          _welcomeText(),
          Container(margin: EdgeInsets.only(top: 20)),
          _descpText(),
          Container(margin: EdgeInsets.only(top: 60)),
          _bottomSheet(),
        ],
      ),
    );
  }

  Widget _bottomSheet() {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        color: WHITE_COLOR,
      ),
      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
      height: MediaQuery.of(context).size.height / 1.5,
      child: ListView(
        children: <Widget>[
          Container(margin: EdgeInsets.only(top: 20)),
          _loginText(),
          Container(margin: EdgeInsets.only(top: 40)),
          _usernameTextField(),
          Container(margin: EdgeInsets.only(top: 10)),
          _userpasswordField(),
          Container(margin: EdgeInsets.only(top: 90)),
          _loginButton()
        ],
      ),
    );
  }

  Widget _welcomeText() {
    return Text(
      "Welcome",
      style: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 36,
        color: WHITE_COLOR,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _descpText() {
    return Text(
      "On duty passes made simple.",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18, color: GREY_COLOR),
    );
  }

  Widget _loginText() {
    return Text(
      "Login to your account",
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: 'Raleway', fontSize: 24, color: Colors.grey),
    );
  }

  Widget _usernameTextField() {
    return TextField(
        style: TextStyle(color: Colors.black),
        onChanged: authBloc.onChangeEmail,
        decoration: InputDecoration(
          counterText: "Students enter register number. Teachers enter email.",
          labelText: "username",
          labelStyle: TextStyle(fontSize: 16, color: Colors.black),
          focusedBorder: _border(),
          hasFloatingPlaceholder: true,
          enabledBorder: _border(),
        ));
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)));
  }

  Widget _userpasswordField() {
    return TextField(
      obscureText: _obscureText,
      style: TextStyle(color: Colors.black),
      onChanged: authBloc.onChangePassword,
      decoration: InputDecoration(
        counterText: "Please enter your password. Default is 0000",
        suffixIcon: InkWell(
          child: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        labelText: "password",
        labelStyle: TextStyle(fontSize: 16, color: Colors.black),
        focusedBorder: _border(),
        hasFloatingPlaceholder: true,
        enabledBorder: _border(),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      width: 320,
      height: 50,
      child: StreamBuilder(
          initialData: "",
          stream: authBloc.email,
          builder: (context, snapshot) {
            return RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentDashboard()),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10,
              color: ACCENT_COLOR,
              child: Text(
                "LOG IN",
                style: TextStyle(
                    color: WHITE_COLOR, fontSize: 18, letterSpacing: 1.8),
              ),
            );
          }),
    );
  }
}
