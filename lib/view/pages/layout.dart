import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled/view_model/bloc/layout/layout_cubit.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LayoutCubit layoutCubit = LayoutCubit.get(context);
          return MaterialApp(
              home: Scaffold(
              // body: layoutCubit.pageList[layoutCubit.current_index],
              bottomNavigationBar: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
              color: Colors.black12,
              blurRadius: 30,
              blurStyle: BlurStyle.outer),
              ],),
                child:Padding(
                  padding: const EdgeInsets.all(10.0), child:
                GNav(
                  gap: 7,
                  activeColor: Colors.deepOrange,
                  tabBackgroundColor: Colors.white70,
                  padding:const
                  EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15),
                  tabs: [
                    GButton(
                      icon: Icons.home_outlined,
                      text: "Home",
                    ),
                    GButton(
                      icon: Icons.newspaper_outlined,
                      text: "News",
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: "Settings",
                    ),
                  ],
                  selectedIndex: LayoutCubit.get(context).current_index,
                  onTabChange: (index)
                  {
                    LayoutCubit.get(context).BottomTap(index);
                    },
                ),
                ),
              ),
                body: layoutCubit.pageList[LayoutCubit.get(context).current_index],

              ),);
          },
      ),
    );
  }
}