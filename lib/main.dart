import 'package:calaton_project/app/app.dart';
import 'package:calaton_project/app/screens/login/login_screen.dart';
import 'package:calaton_project/app/screens/login/login_view_model.dart';
import 'package:calaton_project/data/user_repo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // приклад
        // Provider.value(value: navigationUtil),
        // Provider.value(value: service),
      ],
      child: const App(),
    ),
  );
}
