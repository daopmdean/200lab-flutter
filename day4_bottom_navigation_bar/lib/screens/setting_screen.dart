import 'package:day4_bottom_navigation_bar/screens/setting_screen_detail.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting Screen'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => SettingScreenDetail()),
          ),
          child: Text('Go to Setting Detail'),
        ),
      ),
    );
  }
}
