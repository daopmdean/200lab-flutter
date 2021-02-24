import 'package:flutter/material.dart';
import 'package:flutter_daythree_user_info/models/user_info.dart';
import 'package:flutter_daythree_user_info/screens/user_screen.dart';
import 'package:flutter_daythree_user_info/services/api_service.dart';

void main() async {
  var user = await ApiService.getUserInfo();
  runApp(
    MyApp(
      user: user,
    ),
  );
}

class MyApp extends StatelessWidget {
  final UserInfo user;

  const MyApp({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserScreen(
        user: user,
      ),
    );
  }
}
