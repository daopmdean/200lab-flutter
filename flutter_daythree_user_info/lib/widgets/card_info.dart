import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final Icon icon;
  final String text;

  const CardInfo({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      color: Colors.white,
      child: ListTile(
        leading: icon,
        title: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.teal,
          ),
        ),
      ),
    );
  }
}
