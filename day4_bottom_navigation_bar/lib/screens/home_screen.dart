import 'package:day4_bottom_navigation_bar/screens/home_screen_detail.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => HomeScreenDetail()),
          ),
          child: Text('Go to Home Detail'),
        ),
      ),
    );
  }
}
