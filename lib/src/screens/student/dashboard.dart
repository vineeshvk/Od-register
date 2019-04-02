import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:od_register/src/colors/colors.dart';
import 'package:od_register/src/screens/student/request_screen.dart';

class StudentDashboard extends StatefulWidget {
  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard>
    with SingleTickerProviderStateMixin {
  List<Map<String, dynamic>> get frontLayerList => [
        {
          "screen": RequestScreen(),
          "icon": "assets/images/request.svg",
          "title": "Your Request"
        },
        {
          "screen": _secondScreen,
          "icon": "assets/images/notification.svg",
          "title": "Notifications"
        },
        {
          "screen": _thirdScreen,
          "icon": "assets/images/profile.svg",
          "title": "Your Profile"
        }
      ];
  int page = 0;
  AnimationController backdropController;
  @override
  void initState() {
    super.initState();
    backdropController = AnimationController(
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    backdropController.fling();
    return BackdropScaffold(
      controller: backdropController,
      title: Text(
        "App name",
        textAlign: TextAlign.center,
        style:
            TextStyle(fontFamily: 'Raleway', fontSize: 18, color: WHITE_COLOR),
      ),
      backLayer: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[_yourRequest(0), _yourRequest(1), _yourRequest(2)],
        ),
      ),
      frontLayer: frontLayerList[page]['screen'],
    );
  }

  Widget _yourRequest(int index) {
    return Container(
      width: 500,
      height: 60,
      child: FlatButton(
        color: page == index ? SELECTED_COLOR : Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {
          setState(() {
            page = index;
          });
          backdropController.fling();
        },
        child: Row(children: [
          SvgPicture.asset(
            frontLayerList[index]['icon'],
            color: WHITE_COLOR,
          ),
          Container(width: 20),
          Text(
            frontLayerList[index]['title'],
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 18,
              color: WHITE_COLOR,
            ),
          ),
        ]),
      ),
    );
  }

  Widget get _secondScreen {
    return Center(child: Text("Second"));
  }

  Widget get _thirdScreen {
    return Center(child: Text("Third"));
  }
}
