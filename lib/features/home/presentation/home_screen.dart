import 'package:flutter/material.dart';
import 'package:tut_login_app_example/features/login/data/login_repository.dart';
import 'package:tut_login_app_example/features/login/presentation/almost_google_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.repository});

  final LoginRepository repository;

  @override
  Widget build(BuildContext context) {
    final user = repository.getUser();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Logged in as ${user?.email}")),
        SizedBox(height: 32),
        AlmostGoogleButton(
            onPressed: () => repository.logoutUser(),
            child: const Text("LogOut"))
      ],
    );
  }
}
