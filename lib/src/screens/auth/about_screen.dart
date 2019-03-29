import 'package:flutter/material.dart';
import 'package:od_register/src/colors/colors.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      appBar: _header(),
    );
  }

  AppBar _header() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  Widget _bodyContent() {
    return Container(
        child: Column(
      children: <Widget>[],
    ));
  }

  Widget _appLogo() {
    return Text(
      "App Logo",
      style: TextStyle(fontFamily: "Raleway"),
    );
  }
}
