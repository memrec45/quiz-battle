// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthSignInEvent extends AuthEvent {
  final String email;
  final String password;
  const AuthSignInEvent({
    required this.email,
    required this.password,
  });
}

class AuthSignUpEvent extends AuthEvent {
  final String email;
  final String password;
  final String userName;
  const AuthSignUpEvent({
    required this.userName,
    required this.email,
    required this.password,
  });
}
