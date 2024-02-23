import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:tut_login_app_example/features/login/data/login_repository.dart';

class LoginScreen extends StatefulWidget {
  final LoginRepository repository;
  const LoginScreen({super.key, required this.repository});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _mailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _mailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _mailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  ValueNotifier userCredential = ValueNotifier('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              controller: _mailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            SignInButton(
              Buttons.Google,
              mini: false,
              onPressed: () async {
                userCredential.value =
                    await widget.repository.signInWithGoogle();

                if (userCredential.value != null) {
                  print(userCredential.value.user!.email);
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                String mail = _mailController.text.trim();
                String password = _passwordController.text.trim();

                widget.repository.loginUser(mail, password);
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
                onPressed: () {
                  String mail = _mailController.text.trim();
                  String password = _passwordController.text.trim();
                  widget.repository.signUp(mail, password);
                },
                child: const Text("SignUp")),
            ElevatedButton(
                onPressed: () {
                  String mail = _mailController.text.trim();
                  widget.repository.resetPassword(mail);
                },
                child: const Text("Reset Password"))
          ])),
    );
  }
}
