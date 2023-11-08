import 'package:calaton_project/data/user.dart';
import 'package:calaton_project/domain/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';


class UserRepository {
  UserRepository();

  IUser signIn(String login, String password) {
    return User(password: password, login: login);
  }
}
