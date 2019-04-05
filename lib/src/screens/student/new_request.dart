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
                _eventSection(),
                Container(margin: EdgeInsets.only(top: 20)),
                _divider(),
                Container(margin: EdgeInsets.only(top: 20)),
                _eventTypeSection(),
                Container(margin: EdgeInsets.only(top: 20)),
                _divider(),
                Container(margin: EdgeInsets.only(top: 20)),
                _submitSection()
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
      style: TextStyle(fontSize: 10, color: Colors.grey),
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

  Widget _eventTypeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _eventTypeText(),
        Container(margin: EdgeInsets.only(top: 10)),
        _radioButtons(),
        Container(margin: EdgeInsets.only(top: 10)),
        _eventTypeInput(),
        Container(margin: EdgeInsets.only(top: 30)),
        _noteText(),
        Container(margin: EdgeInsets.only(top: 10)),
        _noteMessage(),
        Container(margin: EdgeInsets.only(top: 10)),
        _noteInput(),
      ],
    );
  }

  Widget _eventTypeText() {
    return Text(
      "EVENT TYPE",
      style: TextStyle(fontSize: 10, color: Colors.grey),
    );
  }

  Widget _radioButtons() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _functionRadioButton("Technical"),
        Container(margin: EdgeInsets.only(left: 20)),
        _functionRadioButton("Cultural (Arts)")
      ],
    ));
  }

  Widget _eventTypeInput() {
    return TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          counterText:
              "Type of the event you will participate in.For e.g. Paper Presentation,\n Hackathon, etc.",
          labelText: "Event Type",
          labelStyle: TextStyle(fontSize: 16, color: Colors.black),
          focusedBorder: _border(),
          hasFloatingPlaceholder: true,
          enabledBorder: _border(),
        ));
  }

  Widget _noteText() {
    return Text(
      "NOTE TO FACULTY",
      style: TextStyle(fontSize: 10, color: Colors.grey),
    );
  }

  Widget _noteMessage() {
    return Text(
      "You can mention any special considerations you wish to convey to your faculty,\n such as team members, etc.",
      style: TextStyle(fontSize: 10, color: Colors.black),
    );
  }

  Widget _noteInput() {
    return TextField(
      decoration: InputDecoration(
          hintText: "Add a message (optional)",
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  Widget _divider() {
    return Divider(height: 5.0, color: Colors.grey);
  }

  Widget _submitSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _submitText(),
        Container(margin: EdgeInsets.only(top: 20)),
        _submitMessage(),
        Container(margin: EdgeInsets.only(top: 20)),
        Center(
          child: _submitButton(),
        )
      ],
    );
  }

  Widget _submitText() {
    return Text(
      "REVIEW DETAILS AND SUBMIT",
      style: TextStyle(fontSize: 10, color: Colors.grey),
    );
  }

  Widget _submitMessage() {
    return Text(
      "Please note that you cannot edit any details of this request once you submit.",
      style: TextStyle(fontSize: 10, color: Colors.black),
    );
  }

  Widget _submitButton() {
    return Container(
      width: 320,
      height: 50,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 10,
        color: ACCENT_COLOR,
        child: Text(
          "SUBMIT REQUEST",
          style:
              TextStyle(color: WHITE_COLOR, fontSize: 18, letterSpacing: 1.8),
        ),
      ),
    );
  }

  Widget _functionRadioButton(String text) {
    return Container(
        padding: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Row(children: <Widget>[
          Radio(
            value: 1,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 14.0,
            ),
          )
        ]));
  }
}
