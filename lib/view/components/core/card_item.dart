import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cardItem(

    String name, String lectureDay, String startTime, String endTime,

    {String? OBJ}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: double.infinity,
      height: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: Card(
        elevation: 15.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(Icons.alarm),
                      Text("2hrs"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lecture Day",
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('images/calendar.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("$lectureDay"),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Start Time",
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('images/clock.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("$startTime"),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "End Time",
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('images/clock1.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("$endTime"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
