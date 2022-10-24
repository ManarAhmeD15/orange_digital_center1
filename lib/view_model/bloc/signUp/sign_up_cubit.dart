import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/model/uni_model.dart';

import '../../../constans/token.dart';
import '../../../model/grade_model.dart';
import '../../../model/sign_up_model.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  static SignUpCubit get(context) => BlocProvider.of(context);

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController phone = TextEditingController();

  var FormKey=GlobalKey<FormState>();
  bool isPassword=true;

  SignUpModel? modelData;
  UniModel? uniModelm;
  GradeModel? gradeModel;

  List<String> GenderList = <String>[
    'Male',
    'Female',
  ];
  List<String> UniversityList = <String>['AUC', 'CIS', 'CIC', 'FCIS'];
  List<String> GradeList = <String>[
    'Grade 1',
    'Grade 2',
    'Grade 3',
    'Grade 4',
  ];

  void signUp()  async{
    var data = {
      "email": email.text,
      "password": pass.text,
      "name": name.text,
      "phoneNumber": phone.text,
      "gender": "m",
      "universityId": "1",
    };
   await DioHelper.postData(url: registerEndPoint, data: data).then(
      (value) {
        print(value.data.toString());
        modelData = SignUpModel.fromJson(value.data);
        print(modelData!.message.toString());
        emit(ODCIRegsterSucsessState(modelData!.message.toString()));
      }).catchError((Error){
      print(Error.toString());
      emit(ODCIRegsterEroreState(Error.toString()));
    });

  }

  void selectGender() {
    DioHelper.getData(url: gradeEndPoint, token: token).then((value) {
      if (value.statusCode == 200) modelData = SignUpModel.fromJson(value.data);

      emit(
        GradeSuccess(),
      );
    });
  }

  void selectUniversity() {
    DioHelper.getData(url: universityEndPoint, token: token).then((value) {
      if (value.statusCode == 200) modelData = SignUpModel.fromJson(value.data);

      emit(
        UniversitySuccess(),
      );
    });
  }

  void getUniversitiesAndGrades() {
    selectUniversity();
    selectGender();
  }

  String currentUniversityItem = "AUC";

  void selectUniversityItem(item) {
    currentUniversityItem = item;
    emit(itemSelected());
  }

  String currentGradeItem = "Admin";

  void selectGradeItem(item) {
    currentGradeItem = item;
    emit(itemSelected());
  }

  bool isPassowrdShown = false;

  void ShowPass() {
    isPassowrdShown = !isPassowrdShown;
    emit(ShowPassword());
  }
  String Gender = 'm';
  String SelectedGender = "Male";

  void changeGender(String s) {
    SelectedGender = s;
    emit(ODCIChangeSelectedGenderState());
  }



}
