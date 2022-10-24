import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNotes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,

     home: Scaffold(
       appBar:

       AppBar(
         backgroundColor: Colors.white,
         centerTitle: true,
         leading:
         IconButton(icon:Icon(Icons.arrow_back_ios,),
           onPressed: (){
           Navigator.pop(context);
           },
           color: Colors.black,
         ),
         title: Text('Add Notes',
           style: GoogleFonts.poppins(fontSize: 20.0,
               fontWeight: FontWeight.bold,
               color: Colors.black
           ),),

       ),
       body: Padding(
         padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
         child: Column(
           children: [
             SizedBox(height: 20.0,),
             TextFormField(
               decoration: InputDecoration(
                 labelText: 'Title',
                 labelStyle: TextStyle(
                   color: Colors.black,
                 ),
                 focusColor: Colors.green,
                 border: OutlineInputBorder(
                   borderSide: const BorderSide(
                       width: 3, color: Colors.blue),
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0), ),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: const BorderSide(
                       width: 3, color: Colors.green),
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0), ),
                 ),
               ),


             ),
             SizedBox(height: 20.0,),

             TextFormField(
               decoration: InputDecoration(
                 labelText: 'Date',
                 labelStyle: TextStyle(
                   color: Colors.black,
                 ),
                 focusColor: Colors.green,
                 border: OutlineInputBorder(
                   borderSide: const BorderSide(
                       width: 3, color: Colors.blue),
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0), ),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: const BorderSide(
                       width: 3, color: Colors.green),
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0), ),
                 ),
               ),


             ),
             SizedBox(height: 20.0,),

             TextFormField(
               decoration: InputDecoration(
                 contentPadding: EdgeInsets.only(left: 10.0,bottom: 80),
                 labelText: 'Note',
                 labelStyle: TextStyle(
                   color: Colors.black,
                 ),
                 focusColor: Colors.green,
                 border: OutlineInputBorder(
                   borderSide: const BorderSide(
                       width: 3, color: Colors.blue),
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0), ),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: const BorderSide(
                       width: 3, color: Colors.green),
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0), ),
                 ),
               ),


             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 20.0),
               child: Container(
                 width: 90.0,
                 height:40.0,
                 decoration: BoxDecoration(
                   color: Colors.blueGrey[200],
                   borderRadius: BorderRadius.circular(
                     10.0,
                   ),
                 ),
                 child: Row(
                   children: [
                     Icon(Icons.add,),
                     TextButton(
                       onPressed: (){},
                       child: Text('Add',
                         style: TextStyle(fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                             color: Colors.black),),

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