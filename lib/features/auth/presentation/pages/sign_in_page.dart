import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_battle/core/constants/logger.dart';
import 'package:quiz_battle/core/extensions/empty_padding.dart';
import 'package:quiz_battle/core/utils/widgets/loading.dart';
import 'package:quiz_battle/core/utils/widgets/snack_bars.dart';
import 'package:quiz_battle/features/auth/presentation/pages/sign_up_page.dart';

import '../../../../core/utils/widgets/buttons.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/text_field.dart';

class SignInPage extends StatefulWidget {
  static const routeName = "sign-in";
  const SignInPage({
    super.key,
  });

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthBloc _authBloc = AuthBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text("Sign In")),
      body: SafeArea(
        child: BlocConsumer<AuthBloc, AuthState>(
          bloc: _authBloc,
          listenWhen: (previous, current) => current is AuthActionState,
          listener: (context, state) {
            switch (state.runtimeType) {
              case AuthLoadingState:
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) => const Loading(),
                );
                break;

              case AuthSignInErrorState:
                Navigator.of(context).pop();
                state as AuthSignInErrorState;
                ScaffoldMessenger.of(context).showSnackBar(
                  ErrorSnack(message: state.error),
                );
                break;
              case AuthSignInSuccessState:
                ScaffoldMessenger.of(context).showSnackBar(
                  const SuccessSnack(message: "You signed in successfully"),
                );
                Navigator.of(context).pushReplacementNamed("/");

                break;

              default:
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EmailField(
                  controller: _emailController,
                ),
                16.ph,
                PasswordField(
                  controller: _passwordController,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text.rich(
                      TextSpan(text: "You don't Have an Account ?"),
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
                          .pushReplacementNamed(SignUpPage.routeName),
                      child: const Text(
                        "Sign Up",
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
                  onPressed: () => _authBloc.add(
                    AuthSignInEvent(
                        email: _emailController.text,
                        password: _passwordController.text),
                  ),
                  child: const Text("Sign In"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
