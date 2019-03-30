import 'package:flutter/material.dart';
import 'package:od_register/src/screens/auth/auth_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
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
