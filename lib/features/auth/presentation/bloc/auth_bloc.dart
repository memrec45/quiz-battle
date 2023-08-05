import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/constants/logger.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});

    on<AuthSignUpEvent>(authSignUpEvent);
    on<AuthSignInEvent>(authSignInEvent);
  }

  /// This function will be called when user clicked the SignUp button
  FutureOr<void> authSignUpEvent(
      AuthSignUpEvent event, Emitter<AuthState> emit) async {
    try {
      /// emit [AuthLoadingState] to show LoadingIndicator
      emit(AuthLoadingState());

      /// check the user name
      if (!event.userName.contains(RegExp(r'[a-zA-Z]')) ||
          event.userName.startsWith(" ") ||
          event.userName.endsWith(" ")) {
        throw const FormatException();
      }

      final auth = FirebaseAuth.instance;

      /// try to register the user
      await auth.createUserWithEmailAndPassword(
          email: event.email, password: event.password);

      await auth.currentUser!.updateDisplayName(event.userName);

      /// if registeration is successfull emit [AuthSignUpSuccessState].
      emit(AuthSignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      /// on error emit [AuthSignUpErrorState] and give the error to the state
      // logger.e(e.message);
      emit(AuthSignUpErrorState(error: e.message ?? "An error occured !"));
    } on FormatException catch (_) {
      emit(AuthSignUpErrorState(
          error: "Unaccepted user name! Please try another one."));
    } catch (e) {
      logger.e(e);
      emit(AuthSignUpErrorState(error: "An error occured ! Please try again."));
    }
  }

  FutureOr<void> authSignInEvent(
      AuthSignInEvent event, Emitter<AuthState> emit) async {
    try {
      emit(AuthLoadingState());
      final auth = FirebaseAuth.instance;

      await auth.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(AuthSignInSuccessState());
    } on FirebaseAuthException catch (e) {
      // logger.e(e);
      emit(AuthSignInErrorState(error: e.message ?? "An error occured !"));
    } catch (e) {
      logger.e(e);

      emit(AuthSignInErrorState(error: "An error occured !"));
    }
  }
}
