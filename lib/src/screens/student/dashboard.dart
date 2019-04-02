import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:od_register/src/colors/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StudentDashboard extends StatefulWidget {
  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard>
    with SingleTickerProviderStateMixin {
  List<Map<String, dynamic>> get frontLayerList => [
        {
          "screen": _firstScreen,
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

  Widget get _firstScreen {
    return Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            _yourRequestRow(),
            Container(
              height: 10,
            ),
            Row(
              children: <Widget>[
                _currentActiveText(),
              ],
            ),
            Container(
              height: 10,
            ),
            _cardList(),
            Container(
              height: 35,
            ),
            Row(
              children: <Widget>[
                _previousRequest(),
              ],
            ),
            Container(
              height: 30,
            ),
            _approvedRequests(),
          ],
        ));
  }

  Widget get _secondScreen {
    return Center(child: Text("Second"));
  }

  Widget get _thirdScreen {
    return Center(child: Text("Third"));
  }

  Widget _yourRequestRow() {
    return Row(
      children: <Widget>[
        Text(
          "Your Request",
          style: TextStyle(fontFamily: 'Raleway', fontSize: 24),
        ),
        Container(
          width: 110,
        ),
        FlatButton(
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Icon(
                Icons.add_circle,
                color: ACCENT_COLOR,
              ),
              Container(width: 10),
              Text("NEW", style: TextStyle(fontSize: 14, color: ACCENT_COLOR)),
            ],
          ),
        )
      ],
    );
  }

  Widget _currentActiveText() {
    return Text(
      "CURRENTLY ACTIVE",
      style: TextStyle(fontSize: 12, color: Colors.grey),
    );
  }

  Widget _cardList() {
    return Center(
        child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _cardRowList1(),
            Container(
              height: 20,
            ),
            _cardRowList2(),
            Container(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 90,
                ),
                _cardRowList3(),
                Container(
                  height: 40,
                )
              ],
            )
          ],
        ),
      ),
    ));
  }

  Widget _cardRowList1() {
    return Row(
      children: <Widget>[
        Text(
          "Yugam 2019",
          style: TextStyle(
              fontFamily: 'Raleway', fontSize: 18, color: Colors.black),
        ),
        Container(
          width: 200,
        ),
        Icon(
          Icons.access_time,
          color: Color.fromRGBO(231, 152, 0, 1),
        )
      ],
    );
  }

  Widget _cardRowList2() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.date_range,
              color: ACCENT_COLOR,
            ),
            Container(
              width: 20,
            ),
            Text("26th March 2019 - 27th March 2019")
          ],
        ),
        Container(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.place,
              color: ACCENT_COLOR,
            ),
            Container(
              width: 20,
            ),
            Text("Kumaraguru College Of Technology")
          ],
        ),
      ],
    );
  }

  Widget _cardRowList3() {
    return Container(
        height: 30,
        width: 230,
        child: RaisedButton(
          padding: EdgeInsets.all(2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          color: Color.fromRGBO(231, 152, 0, 1),
          onPressed: () {},
          child: Text(
            "PENDING TUTOR APPROVAL",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ));
  }

  Widget _previousRequest() {
    return Text(
      "PREVIOUS REQUESTS",
      style: TextStyle(fontSize: 12, color: Colors.grey),
    );
  }

  Widget _approvedRequests() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "SNS Texperia",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Container(
              width: 200,
            ),
            Text(
              "APPROVED",
              style: TextStyle(fontSize: 12, color: Colors.green),
            )
          ],
        ),
        Container(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Text("On 25th March 2019 \nAt SNS College Of Technology",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ))
          ],
        )
      ],
    );
  }
}
