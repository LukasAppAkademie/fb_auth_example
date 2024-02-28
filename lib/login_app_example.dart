import 'package:flutter/material.dart';
import 'package:tut_login_app_example/features/home/presentation/home_screen.dart';
import 'package:tut_login_app_example/features/login/data/login_repository.dart';
import 'package:tut_login_app_example/features/login/presentation/login_screen.dart';

class LoginAppExample extends StatelessWidget {
  const LoginAppExample({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginRepository repository = LoginRepository();

    return MaterialApp(
      home: Scaffold(
        body: StreamBuilder(
          stream: repository.onAuthStateChanged,
          builder: (context, snapshot) {
            // If logged in
            if (snapshot.hasData) {
              // show HomeScreen,
              return HomeScreen(repository: repository);
              // if not logged in
            } else {
              // show Login
              return LoginScreen(repository: repository);
            }
          },
        ),
      ),
    );
  }
}
