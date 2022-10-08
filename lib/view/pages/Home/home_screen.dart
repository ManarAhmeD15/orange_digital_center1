import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../../view_model/bloc/home/home_cubit.dart';
import 'events_screen.dart';
import 'finals_screen.dart';
import 'lectures_screen.dart';
import 'midterms_screen.dart';
import 'notes_screen.dart';
import 'section_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          //  OBJECT  of cubit

          HomeCubit myCubit = HomeCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Orange",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                "Digital",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ),
                            Text(
                              "Center",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 160.0,
                            height: 130.0,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 15.0,
                              margin: EdgeInsets.all(6.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LecturesScreen()),
                                      );
                                    },
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        color: Colors.grey[200],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                          'assets/lecture.svg',
                                          height: 30.0,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    "Lectures",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 160.0,
                            height: 130.0,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 15.0,
                              margin: EdgeInsets.all(6.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.grey[200],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SectionScreen()),
                                          );
                                        },
                                        child: SvgPicture.asset(
                                          'assets/sections.svg',
                                          height: 30.0,
                                          width: 20,
                                          color: Colors.deepOrange,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    "Sections",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 160.0,
                            height: 130.0,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 15.0,
                              margin: EdgeInsets.all(6.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.grey[200],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),

                                      child:

                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    MidetermsScreen(),
                                              ));
                                        },
                                        child: SvgPicture.asset(
                                          'assets/midterm.svg',
                                          height: 30.0,
                                          width: 20,
                                        ),
                                      ),


                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    "Midterms",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 160.0,
                            height: 130.0,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 15.0,
                              margin: EdgeInsets.all(6.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.grey[200],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),


                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    FinalsScreen(),
                                              ));
                                        },
                                        child: SvgPicture.asset(
                                          'assets/final.svg',
                                          height: 30.0,
                                          width: 20,
                                        ),
                                      ),


                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    "Finals",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 160.0,
                            height: 130.0,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 15.0,
                              margin: EdgeInsets.all(6.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.grey[200],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    EventsScreen()),
                                          );
                                        },
                                        child: SvgPicture.asset(
                                          'assets/event.svg',
                                          height: 30.0,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    "Events",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 160.0,
                            height: 130.0,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 15.0,
                              margin: EdgeInsets.all(6.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.grey[200],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {

                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => NotesScreen(),)

                                          );
                                        },
                                        child: SvgPicture.asset(
                                          'assets/notes.svg',
                                          height: 30.0,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    "Notes",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),



            ),
          );
        },
      ),
    );
  }
}
