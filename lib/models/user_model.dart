import 'package:telegramclone/models/time_model.dart';

class UserModel {
  String? _id;
  String? _firstName;
  String? _lastname;
  String? _phone;
  String? _password;
  String? _email;
  String? _username;
  TimeInfo? _timeInfo;

  UserModel.fromJson(Map<String, dynamic> map) {
    _id = map['id'];
    _firstName = map['firstname'];
    _lastname = map['lastname'];
    _phone = map['phone'];
    _password = map['password'];
    _email = map['email'];
    _username = map['username'];
    _timeInfo = map['timeInfo'];
  }

  Map<String, dynamic> toMap() => {
        'id': _id,
        'firstname': _firstName,
        'lastname': _lastname,
        'email': _email,
        'password': _password,
        'timeInfo': _timeInfo,
        'phone': _phone,
        'username': _username,
      };
}
