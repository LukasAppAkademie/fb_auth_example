import 'package:firebase_auth/firebase_auth.dart';
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
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              /// Show HomeScreen
              return HomeScreen(
                repository: repository,
              );
            } else {
              /// Login
              return LoginScreen(
                repository: repository,
              );
            }
          },
        ),
      ),
    );
  }
}
