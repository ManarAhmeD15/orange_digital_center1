import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/view/pages/Home/home_screen.dart';
import 'package:untitled/view/pages/News/news_screen.dart';
import 'package:untitled/view/pages/Settings/settings_screen.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int current_index = 0;
//  int counter = 1;
 // int total = 0;

  List<Widget> pageList = [
    HomeScreen(),
    NewsScreen(),
    SettingsScreen(),
  ];

  void BottomTap(int index)
  {
    current_index=index;
    emit(BottomChange());

  }

}
