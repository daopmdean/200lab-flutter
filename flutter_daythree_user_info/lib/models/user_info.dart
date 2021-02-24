class UserInfo {
  String userUrl;
  String username;
  String gender;
  String titleName;
  String firstName;
  String lastName;
  String phone;
  String email;
  String city;
  String country;

  UserInfo({
    this.userUrl,
    this.username,
    this.gender,
    this.titleName,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.city,
    this.country,
  });

  static UserInfo fromJson(jsonData) {
    var userUrl = jsonData['results'][0]['picture']['large'];
    var username = jsonData['results'][0]['login']['username'];
    var gender = jsonData['results'][0]['gender'];
    var titleName = jsonData['results'][0]['name']['title'];
    var firstName = jsonData['results'][0]['name']['first'];
    var lastName = jsonData['results'][0]['name']['last'];
    var phone = jsonData['results'][0]['phone'];
    var email = jsonData['results'][0]['email'];
    var city = jsonData['results'][0]['location']['city'];
    var country = jsonData['results'][0]['location']['country'];

    return UserInfo(
      userUrl: userUrl,
      username: username,
      gender: gender,
      titleName: titleName,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      email: email,
      city: city,
      country: country,
    );
  }
}
