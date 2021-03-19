import 'package:day4_bottom_navigation_bar/my_bottom_navigation_bar.dart';
import 'package:day4_bottom_navigation_bar/screens/home_screen.dart';
import 'package:day4_bottom_navigation_bar/screens/profile_screen.dart';
import 'package:day4_bottom_navigation_bar/screens/setting_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Navigator(
            onGenerateRoute: (settings) {
              Widget page = HomeScreen();
              return MaterialPageRoute(builder: (_) => page);
            },
          ),
          Navigator(
            onGenerateRoute: (settings) {
              Widget page = ProfileScreen();
              return MaterialPageRoute(builder: (_) => page);
            },
          ),
          Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(builder: (_) => SettingScreen());
            },
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
