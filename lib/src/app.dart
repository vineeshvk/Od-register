import 'package:flutter/material.dart';
import 'package:od_register/src/colors/colors.dart';
import 'package:od_register/src/screens/auth_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
      theme: ThemeData(primaryColor: PRIMARY_COLOR),
      builder: (context, child) => ScrollConfiguration(
            behavior: MyBehavior(),
            child: child,
          ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
