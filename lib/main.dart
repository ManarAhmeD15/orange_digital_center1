import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:untitled/view/pages/Home/add_notes.dart';
import 'package:untitled/view/pages/Home/events_screen.dart';
import 'package:untitled/view/pages/Home/finals_screen.dart';
import 'package:untitled/view/pages/layout.dart';
import 'package:untitled/view/pages/Home/lectures_screen.dart';
import 'package:untitled/view/pages/login_screen.dart';
import 'package:untitled/view/pages/Home/midterms_screen.dart';
import 'package:untitled/view/pages/News/news_screen.dart';
import 'package:untitled/view/pages/Home/notes_screen.dart';
import 'package:untitled/view/pages/Home/section_screen.dart';
import 'package:untitled/view/pages/Settings/settings_screen.dart';
import 'package:untitled/view/pages/signup_screen.dart';
import 'package:untitled/view/pages/splash_screen.dart';
import 'package:untitled/view_model/database/network/dio_helper.dart';
import 'package:untitled/view_model/database/network/end_points.dart';

import 'view/pages/Home/home_screen.dart';


void main() async{
  /*

  await DioHelper.init();
  var json =
  {
    "email":"tohamymedo41@gmailcom",
    "password" : "123456m"
  };

  DioHelper.postData(
      url: universityEndPoint,
      data:json
  ).then((value) {

    print(value.data);
  });


  //DioHelper.getData(url: universityEndPoint).then((value) => print(value.data));



   */

  await DioHelper.init();

  runApp(MaterialApp(home: SplashScreen()));

}


/*

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        leading: Icon(
        Icons.arrow_back,),
    title: Text("Home"),
    actions: [
    Icon(Icons.arrow_back,
    ),
    ],
    ),
        ),


    );

  }
}

 */




















