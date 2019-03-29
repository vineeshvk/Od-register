import 'package:flutter/material.dart';
import 'package:od_register/src/colors/colors.dart';
import 'package:od_register/src/screens/bloc/auth_bloc.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  VoidCallback _show;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _show = _showBottomsheet;
  }

  void _showBottomsheet() {
    setState(() {
      _show = null;
    });

    _scaffoldkey.currentState
        .showBottomSheet((context) {
          return Container(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView(
                children: <Widget>[
                  _loginText(),
                  Container(margin: EdgeInsets.only(top: 30)),
                  _usernameTextField(),
                  Container(margin: EdgeInsets.only(top: 10)),
                  _userpasswordField(),
                  Container(margin: EdgeInsets.only(top: 10)),
                  _loginButton()
                  // RaisedButton(
                  //   onPressed: () {
                  //     modal.mainBottomSheet(context);
                  //   },
                  // )
                  //modal.mainBottomSheet(context)
                ],
              ));
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _show = _showBottomsheet;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldkey,
        backgroundColor: PRIMARY_COLOR,
        body: _bodyContent(context));
  }

  Widget _bodyContent(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[
        Container(margin: EdgeInsets.only(top: 82)),
        _welcomeText(),
        Container(margin: EdgeInsets.only(top: 20)),
        _descpText(),
        Container(margin: EdgeInsets.only(top: 100)),
        RaisedButton(
          onPressed: _show,
        )
        // RaisedButton(
        //   onPressed: () {
        //     modal.mainBottomSheet(context);
        //   },
        // )
        //modal.mainBottomSheet(context)
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
      style:
          TextStyle(fontFamily: 'Raleway', fontSize: 24, color: Colors.black),
    );
  }

  Widget _usernameTextField() {
    return TextField(
        style: TextStyle(fontFamily: 'Raleway', color: Colors.black),
        onChanged: authBloc.onChangeEmail,
        decoration: InputDecoration(
          counterText: "Students enter register number. Teachers enter email.",
          counterStyle: TextStyle(color: GREY_COLOR),
          labelText: "username",
          labelStyle: TextStyle(
              fontFamily: 'Raleway', fontSize: 16, color: Colors.black),
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
      obscureText: true,
      style: TextStyle(fontFamily: 'Raleway', color: Colors.black),
      onChanged: authBloc.onChangePassword,
      decoration: InputDecoration(
        counterText: "Please enter your password. Default is 0000",
        counterStyle: TextStyle(color: GREY_COLOR),
        labelText: "password",
        labelStyle:
            TextStyle(fontFamily: 'Raleway', fontSize: 16, color: Colors.black),
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
                print(snapshot.data);
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
            );
          }),
    );
  }
}
