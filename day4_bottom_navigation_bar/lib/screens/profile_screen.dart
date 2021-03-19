import 'package:day4_bottom_navigation_bar/screens/profile_screen_detail.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ProfileScreenDetail()),
          ),
          child: Text('Go to Profile Detail'),
        ),
      ),
    );
  }
}
