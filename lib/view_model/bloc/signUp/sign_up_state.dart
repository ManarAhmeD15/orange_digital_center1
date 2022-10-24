part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}
class SignUpSuccess extends SignUpState {}
class GradeSuccess extends SignUpState {}
class UniversitySuccess extends SignUpState {}
class itemSelected extends SignUpState {}
class ShowPassword extends SignUpState {}

class ODCIRegsterLoadinState extends SignUpState {}

class ODCIRegsterSucsessState extends SignUpState {
  String message;
  ODCIRegsterSucsessState(this.message);
}

class ODCIRegsterEroreState extends SignUpState {
  String message;
  ODCIRegsterEroreState(this.message);
}


class ODCIChangeSelectedGenderState extends SignUpState {}