import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:percent_indicator/percent_indicator.dart';

import '../../view_model/bloc/splash/splash_cubit.dart';
import 'login_screen.dart';

class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          //

          SplashCubit myCubit =SplashCubit.get(context);
          return MaterialApp(
            home: Scaffold(

              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Text("Orange",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.deepOrange,
                            ),),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text("Digital",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black
                            ),),
                        ),
                        Text("Center",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black
                          ),),


                      ],

                    ),

                    SizedBox(height: 40.0,),

                    LinearPercentIndicator(
                      width: 330,
                      percent: 1,
                      animation: true,
                      lineHeight: 10.0,
                      animationDuration: 2500,
                      progressColor: Colors.deepOrange,
                      backgroundColor: Colors.grey,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      barRadius: Radius.circular(15),
                      onAnimationEnd: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()),);


                      },
                    ),







                  ],
                ),
              ),


            ),
          );
        },
      ),
    );
  }


}