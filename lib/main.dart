import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tut_login_app_example/firebase_options.dart';
import 'package:tut_login_app_example/login_app_example.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const LoginAppExample());
}
