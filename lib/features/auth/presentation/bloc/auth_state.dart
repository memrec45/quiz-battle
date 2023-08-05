// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

abstract class AuthActionState extends AuthState {}

class AuthInitial extends AuthState {}

//* Action States
class AuthLoadingState extends AuthActionState {}

class AuthSignInErrorState extends AuthActionState {
  final String error;
  AuthSignInErrorState({
    required this.error,
  });
}

class AuthSignInSuccessState extends AuthActionState {}

class AuthSignUpSuccessState extends AuthActionState {}

class AuthSignUpErrorState extends AuthActionState {
  final String error;
  AuthSignUpErrorState({
    required this.error,
  });
}
