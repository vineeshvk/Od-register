import 'package:flutter/material.dart';
import 'package:od_register/src/colors/colors.dart';

class NewRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: _mainscreen(),
    );
  }

  Widget _mainscreen() {
    return ListView(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _requestText(),
                Container(margin: EdgeInsets.only(top: 10)),
                _submittingAs(),
                Container(margin: EdgeInsets.only(top: 20)),
                _nameAndRegno(),
                Container(margin: EdgeInsets.only(top: 20)),
                _eventSection()
              ],
            ))
      ],
    );
  }

  Widget _requestText() {
    return Text(
      "New Request",
      style: TextStyle(
          fontFamily: 'Raleway',
          fontSize: 24,
          color: Color.fromRGBO(64, 81, 78, 1)),
    );
  }

  Widget _submittingAs() {
    return Text(
      "SUBMITTING AS",
      style: TextStyle(fontSize: 10),
    );
  }

  Widget _nameAndRegno() {
    return Text(
      "Vineesh V, 16CS146",
      style: TextStyle(fontFamily: 'Raleway', fontSize: 18),
    );
  }

  Widget _eventDetailsText() {
    return Text(
      "EVENT DETAILS",
      style: TextStyle(fontSize: 10),
    );
  }

  Widget _festInput() {
    return TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          counterText: "Name of the conference/fest you want to join",
          labelText: "Fest Name",
          labelStyle: TextStyle(fontSize: 16, color: Colors.black),
          focusedBorder: _border(),
          hasFloatingPlaceholder: true,
          enabledBorder: _border(),
        ));
  }

  Widget _venueInput() {
    return TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          counterText: "The venue of the event you want to go to",
          labelText: "Venue",
          labelStyle: TextStyle(fontSize: 16, color: Colors.black),
          focusedBorder: _border(),
          hasFloatingPlaceholder: true,
          enabledBorder: _border(),
        ));
  }

  Widget _dateInput() {
    return TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          counterText: "Select the range of dates you require",
          labelText: "Dates",
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

  Widget _eventSection() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _eventDetailsText(),
        Container(margin: EdgeInsets.only(top: 10)),
        _festInput(),
        Container(margin: EdgeInsets.only(top: 5)),
        _venueInput(),
        Container(margin: EdgeInsets.only(top: 5)),
        _dateInput()
      ],
    ));
  }
}
