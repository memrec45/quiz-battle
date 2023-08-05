part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

abstract class HomeActionState extends HomeState {}

class HomeInitialState extends HomeState {}

class HomeNavigateToLevelScreen extends HomeActionState {}
