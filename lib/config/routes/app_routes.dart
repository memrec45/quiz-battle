import 'package:flutter/material.dart';
import 'package:quiz_battle/features/Home/presentation/pages/home.dart';
import 'package:quiz_battle/features/auth/presentation/pages/auth_page.dart';
import 'package:quiz_battle/features/auth/presentation/pages/sign_up_page.dart';

import '../../features/auth/presentation/pages/sign_in_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  AuthPage.routeName: (_) => const AuthPage(),
  HomeScreen.routeName: (_) => const HomeScreen(),
  SignUpPage.routeName: (_) => const SignUpPage(),
  SignInPage.routeName: (_) => const SignInPage(),
};
