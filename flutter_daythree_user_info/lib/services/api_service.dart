import 'package:flutter_daythree_user_info/models/user_info.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ApiService {
  static const String url = 'https://randomuser.me/api';

  static Future<UserInfo> getUserInfo() async {
    var jsonData = await _getJsonData();
    if (jsonData == null) {
      return null;
    }

    return UserInfo.fromJson(jsonData);
  }

  static dynamic _getJsonData() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    } else {
      return null;
    }
  }
}
