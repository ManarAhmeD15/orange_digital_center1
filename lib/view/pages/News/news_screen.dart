import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/view/pages/Settings/odc_screen.dart';

import '../../../view_model/bloc/news/news_cubit.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getData(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          NewsCubit myCubit = NewsCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            home: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: Text(
                    'News',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  backgroundColor: Colors.white,
                  elevation: 0.0,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            offset: Offset(0, 2),
                          )
                        ]),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => ODC()));
                                },
                                child: Hero(
                                    tag: 'image',
                                    child: Image.asset(
                                      'images/logo.png',
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'ODCS',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                width: 170,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 40,
                                  width: 80,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Icon(
                                          Icons.share,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                      Expanded(
                                        child: VerticalDivider(
                                          width: 20,
                                          endIndent: 5,
                                          indent: 10,
                                          color: Colors.white,
                                          thickness: 1,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.copy,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 210, left: 10),
                            child: Container(
                              child: Text(
                                'ODC Support All Universites',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
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
