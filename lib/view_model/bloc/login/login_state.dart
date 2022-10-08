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

class ODCIRegsterLoadinState extends LoginState {}

class ODCIRegsterSucsessState extends LoginState {
  String message;
  ODCIRegsterSucsessState(this.message);
}

class ODCIRegsterEroreState extends LoginState {
  String message;
  ODCIRegsterEroreState(this.message);
}


class ODCIChangeSelectedGenderState extends LoginState {}