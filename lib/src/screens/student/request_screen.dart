import 'package:flutter/material.dart';
import 'package:od_register/src/colors/colors.dart';
import 'package:od_register/src/screens/student/new_request.dart';

class RequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _yourRequestRow(context),
                Container(margin: EdgeInsets.only(top: 10)),
                _currentActiveText(),
                Container(margin: EdgeInsets.only(top: 10)),
                _cardList(),
                Container(margin: EdgeInsets.only(top: 35)),
                _previousRequest(),
                Container(margin: EdgeInsets.only(top: 30)),
                _approvedRequests(),
                Container(margin: EdgeInsets.only(top: 20)),
                _divider(),
                Container(margin: EdgeInsets.only(top: 25)),
                _approvedRequests(),
                Container(margin: EdgeInsets.only(top: 20)),
                _divider(),
                Container(margin: EdgeInsets.only(top: 25)),
                _approvedRequests(),
                Container(margin: EdgeInsets.only(top: 20)),
                _divider(),
                Container(margin: EdgeInsets.only(top: 25)),
                _approvedRequests(),
              ],
            ))
      ],
    );
  }

  Widget _yourRequestRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Your Request",
          style: TextStyle(fontFamily: 'Raleway', fontSize: 24),
        ),
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewRequest()),
            );
          },
          child: Row(
            children: <Widget>[
              Icon(Icons.add_circle, color: ACCENT_COLOR),
              Container(margin: EdgeInsets.only(left: 10)),
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
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _eventName(),
            Container(margin: EdgeInsets.only(top: 20)),
            _eventDetails(),
            Container(margin: EdgeInsets.only(top: 15)),
            _statusButton()
          ],
        ),
      ),
    );
  }

  Widget _eventName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Yugam 2019",
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        Icon(
          Icons.access_time,
          color: Color.fromRGBO(231, 152, 0, 1),
        )
      ],
    );
  }

  Widget _eventDetails() {
    return Column(
      children: <Widget>[
        _eventDetailItems(
          Icons.date_range,
          "26th March 2019 - 27th March 2019",
        ),
        Container(margin: EdgeInsets.only(top: 10)),
        _eventDetailItems(
          Icons.place,
          "Kumaraguru College Of Technology",
        )
      ],
    );
  }

  Widget _eventDetailItems(IconData icon, String detail) {
    return Row(
      children: <Widget>[
        Icon(icon, color: ACCENT_COLOR),
        Container(margin: EdgeInsets.only(left: 20)),
        Text(detail)
      ],
    );
  }

  Widget _statusButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
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
          ),
        ),
        Container(margin: EdgeInsets.only(right: 10)),
      ],
    );
  }

  Widget _previousRequest() {
    return Text(
      "PREVIOUS REQUESTS",
      style: TextStyle(fontSize: 12, color: Colors.grey),
    );
  }

  Widget _approvedRequests() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "SNS Texperia",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Text(
                "APPROVED",
                style: TextStyle(fontSize: 12, color: Colors.green),
              )
            ],
          ),
          Container(margin: EdgeInsets.only(top: 5)),
          Text(
            "On 25th March 2019 \nAt SNS College Of Technology",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget _divider() {
    return Divider(height: 5.0, color: Colors.grey);
  }
}
