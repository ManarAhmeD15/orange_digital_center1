import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurPartners extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
          centerTitle: true,
          leading:  IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back_ios),
            color: Colors.deepOrange,
          ),
          title: Text('Our Partners',
            style: GoogleFonts.poppins(fontSize: 28.0,
           // fontWeight: FontWeight.bold,
            color: Colors.black
        ),),
          elevation: 10.0,
        ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
        child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xffb9b8b8),
                Color(0xfffdfdfc),
                Color(0xffb9b8b8),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 10),
            ],
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ODC",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 25),
                    ),
                    Image.asset(
                      "images/logo.png",
                      width: 800,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
  }


}