part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginSuccess extends LoginState{}
class ShowPassword extends LoginState{}



class ODCILoginSucsessState extends LoginState {

  String message;
  ODCILoginSucsessState(this.message);
}

class ODCILoginEroreState extends LoginState {
  String message;
  ODCILoginEroreState(this.message);
}

