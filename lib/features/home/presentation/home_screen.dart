import 'package:flutter/material.dart';
import 'package:tut_login_app_example/features/login/data/login_repository.dart';

class HomeScreen extends StatelessWidget {
  final LoginRepository repository;
  const HomeScreen({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(child: Text("LoggedIN")),
        OutlinedButton(
            onPressed: () => repository.logoutUser(),
            child: const Text("LogOut"))
      ],
    );
  }
}
