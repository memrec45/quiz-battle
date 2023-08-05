import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_battle/features/Home/presentation/pages/home.dart';
import 'package:quiz_battle/features/auth/presentation/pages/sign_in_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  static const routeName = "/";
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const HomeScreen();
        } else {
          return const SignInPage();
        }
      },
    );
  }
}
