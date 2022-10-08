import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ODC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading:
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios,),
              color: Colors.deepOrange,
              onPressed: () {Navigator.pop(context);},
            ),
          ),
        ),


         */
        body:
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,

            SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Hero(
                        tag: "ODC",
                        child: Center(
                          child: Image.asset("images/logo.png"),
                        ),
                      ),
                      Positioned(
                        top: 7,
                        left: 7,
                        child: FloatingActionButton(
                          onPressed: () => Navigator.pop(context),
                          elevation: 4,
                          mini: true,
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.deepOrange,
                          ),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ODCs',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.black),
                      ),
                      Text(
                        '2022-07-06',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.deepOrange),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'ODC Support All Universties',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
