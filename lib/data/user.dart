import 'package:calaton_project/domain/user.dart';

class User implements IUser {
  @override
  final String password;
  @override
  final String login;

  User({required this.password, required this.login});
}
