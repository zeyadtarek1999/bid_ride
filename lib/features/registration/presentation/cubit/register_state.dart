part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}
class SignUpLoading extends RegisterState {}
class SignUpSuccess extends RegisterState {}
class SignUpError extends RegisterState {
  final String error;

  SignUpError(this.error);
}

