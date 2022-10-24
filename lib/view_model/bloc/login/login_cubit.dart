import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/view/pages/layout.dart';

import '../../../constans/token.dart';
import '../../../model/login_model.dart';
import '../../../view/pages/Home/home_screen.dart';
import '../../database/local/sharedPreferences.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';



part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailCt = TextEditingController();
  TextEditingController passwordCt = TextEditingController();

  LoginModel? userLogin;

  bool isPassowrdShown = false;

  void ShowPass() {
    isPassowrdShown = !isPassowrdShown;
    emit(ShowPassword());
  }

  void login(context)  async {
    var json = {
      "email": emailCt.text.toString(),
      "password": passwordCt.text.toString(),
    };

    print(emailCt.text);
    print(passwordCt.text);

    await DioHelper.postData(url: loginEndPoint, data: json).then((value) {
      print(value.data.toString());
      if (value.statusCode == 200) {
        userLogin = LoginModel.fromJson(value.data);
        print(userLogin!.message.toString());
        CashHelper.SaveData(key: "token", value: userLogin!.data!.accessToken);

        emit(ODCILoginSucsessState(userLogin!.message.toString()));


        //if (token != "" || token != null || token.isNotEmpty) {
          //Navigator.push(context,MaterialPageRoute(builder: (context)=>Layout(),));

        //}
      }
    }).catchError((Error) {
      print(Error.toString());
      emit(ODCILoginEroreState(Error.toString()));
    });



  }
}
