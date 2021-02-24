import 'package:flutter/material.dart';
import 'package:flutter_daythree_user_info/models/user_info.dart';
import 'package:flutter_daythree_user_info/widgets/card_info.dart';

class UserScreen extends StatelessWidget {
  final UserInfo user;

  const UserScreen({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  user.userUrl,
                ),
              ),
              Text(
                '${user.titleName}. ${user.firstName} ${user.lastName}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                '${user.username}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: 10,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              CardInfo(
                icon: Icon(
                  Icons.phone,
                  size: 30,
                  color: Colors.teal,
                ),
                text: '${user.phone}',
              ),
              CardInfo(
                icon: Icon(
                  Icons.email,
                  size: 30,
                  color: Colors.teal,
                ),
                text: '${user.email}',
              ),
              CardInfo(
                icon: Icon(
                  Icons.airplanemode_on,
                  size: 30,
                  color: Colors.teal,
                ),
                text: '${user.city}, ${user.country}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
