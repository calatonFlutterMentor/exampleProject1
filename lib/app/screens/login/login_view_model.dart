import 'package:calaton_project/app/common/base_change_notifier.dart';
import 'package:flutter/material.dart';

import '../../../data/user_repo.dart';

class LoginViewModel extends BaseChangeNotifier {
  String login = "";
  String password = "";
  final UserRepository _userRepository ;

  LoginViewModel({required UserRepository userRepository}) : _userRepository = userRepository;

  Future<void> onLoginButtonPressed(String login, String password) async {
    _userRepository.signIn(login, password);
    await Future.delayed(const Duration(seconds: 2));
    this.login = login;
    this.password = password;
  }
}
