import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/view/pages/layout.dart';

import '../../../constans/token.dart';
import '../../../model/login_model.dart';
import '../../../view/pages/Home/home_screen.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';



part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailCt = TextEditingController();
  TextEditingController passwordCt = TextEditingController();

  LoginModel? modelData;

  bool isPassowrdShown = false;

  void ShowPass() {
    isPassowrdShown = !isPassowrdShown;
    emit(ShowPassword());
  }

  void login(context) {
    var jason = {
      "email": emailCt.text,
      "password": passwordCt.text,
    };

    print(emailCt.text);
    print(passwordCt.text);

    DioHelper.postData(url: loginEndPoint, data: jason).then((value) {
      if (value.statusCode == 200) {
        modelData = LoginModel.fromJson(value.data);
        token = modelData!.data!.accessToken.toString();
        print(token);
        if (token != "" || token != null || token.isNotEmpty) {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Layout(),));

          emit(LoginSuccess());
        }
      }
    }).catchError((e) {
      print(e);
    });



  }
}
