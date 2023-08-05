import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_battle/core/extensions/empty_padding.dart';
import 'package:quiz_battle/core/utils/widgets/buttons.dart';
import 'package:quiz_battle/core/utils/widgets/loading.dart';
import 'package:quiz_battle/core/utils/widgets/snack_bars.dart';
import 'package:quiz_battle/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:quiz_battle/features/auth/presentation/pages/sign_in_page.dart';
import 'package:quiz_battle/features/auth/presentation/widgets/text_field.dart';

import '../../../../core/constants/logger.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = "sign-up";
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late AuthBloc _authBloc;

  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  @override
  void initState() {
    _authBloc = AuthBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: SafeArea(
        child: BlocConsumer(
            bloc: _authBloc,
            listenWhen: (previous, current) => current is AuthActionState,
            listener: (context, state) {
              switch (state.runtimeType) {
                case AuthSignUpErrorState:
                  Navigator.of(context).pop();
                  state as AuthSignUpErrorState;
                  ScaffoldMessenger.of(context).showSnackBar(
                    ErrorSnack(
                      message: state.error.toString(),
                    ),
                  );
                  break;
                case AuthSignUpSuccessState:
                  Navigator.of(context).pushReplacementNamed("/");

                  break;
                case AuthLoadingState:
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (_) => const Loading());

                  break;
                default:
              }
            },
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NormalTextField(
                    controller: _userNameController,
                    title: "User Name",
                  ),
                  16.ph,
                  EmailField(
                    controller: _mailController,
                  ),
                  16.ph,
                  PasswordField(
                    controller: _passwordController,
                  ),

                  /// Navigate tp Sign in text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text.rich(
                        TextSpan(text: "Already Have an Account ?"),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero),
                        ),
                        onPressed: () => Navigator.of(context)
                            .pushReplacementNamed(SignInPage.routeName),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  16.ph,
                  FullSizedButton(
                    screenWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      _authBloc.add(
                        AuthSignUpEvent(
                          email: _mailController.text,
                          password: _passwordController.text,
                          userName: _userNameController.text,
                        ),
                      );
                    },
                    child: const Text("Sign Up"),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
