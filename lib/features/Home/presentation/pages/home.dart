import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_battle/core/constants/logger.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void didChangeDependencies() {
    try {
      Navigator.of(context).popUntil(
        (route) => route == ModalRoute.of(context),
      );
      // ignore: empty_catches
    } catch (e) {
      logger.e(e, stackTrace: StackTrace.current);
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          actions: [
            ElevatedButton(
              onPressed: () => FirebaseAuth.instance.signOut(),
              child: const Text("asd"),
            )
          ],
        ),
      ),
      onWillPop: () async => false,
    );
  }
}
