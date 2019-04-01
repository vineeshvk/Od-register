import 'package:flutter/material.dart';
import 'package:od_register/src/colors/colors.dart';
import 'package:backdrop/backdrop.dart';

class StudentDashboard extends StatefulWidget {
  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
        title: Text(
          "App name",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Raleway', fontSize: 18, color: WHITE_COLOR),
        ),
        backLayer: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(width: 500, height: 60, child: _yourRequest()),
                Container(width: 500, height: 60, child: _notification()),
                Container(width: 500, height: 60, child: _yourProfile())
              ],
            )),
        frontLayer: Center(
          child: Text("Front Layer"),
        ));
  }

  Widget _yourRequest() {
    return FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
        child: Row(children: [
          Icon(
            Icons.call_made,
            color: WHITE_COLOR,
          ),
          Container(
            width: 20,
          ),
          Text(
            "Your Request",
            style: TextStyle(
                fontFamily: 'Raleway', fontSize: 18, color: WHITE_COLOR),
          ),
        ]));
  }

  Widget _notification() {
    return FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
        child: Row(children: [
          Icon(
            Icons.notifications,
            color: WHITE_COLOR,
          ),
          Container(
            width: 20,
          ),
          Text(
            "Notification",
            style: TextStyle(
                fontFamily: 'Raleway', fontSize: 18, color: WHITE_COLOR),
          ),
        ]));
  }

  Widget _yourProfile() {
    return FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
        child: Row(children: [
          Icon(
            Icons.people,
            color: WHITE_COLOR,
          ),
          Container(
            width: 20,
          ),
          Text(
            "Your Profile",
            style: TextStyle(
                fontFamily: 'Raleway', fontSize: 18, color: WHITE_COLOR),
          ),
        ]));
  }
}
