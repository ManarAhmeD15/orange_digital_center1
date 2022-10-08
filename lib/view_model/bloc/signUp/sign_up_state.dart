part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}
class SignUpSuccess extends SignUpState {}
class GradeSuccess extends SignUpState {}
class UniversitySuccess extends SignUpState {}
class itemSelected extends SignUpState {}
class ShowPassword extends SignUpState {}