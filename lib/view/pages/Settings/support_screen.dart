import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../view_model/bloc/support/support_cubit.dart';


class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SupportCubit(),
      child: BlocConsumer<SupportCubit, SupportState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SupportCubit myCubit =SupportCubit.get(context);
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
                title: Text('Support',
                  style: GoogleFonts.poppins(fontSize: 20.0,
                     // fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                elevation: 10.0,


              ),

              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          // controller: usernameController,
                          keyboardType: TextInputType.name,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          onChanged: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'user name must not be empty';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.blue),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.orange),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),

                      TextFormField(
                        cursorColor: Colors.grey,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        // controller: usernameController,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'user name must not be empty';
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'E-Mail',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.blue),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.orange),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: TextFormField(

                          cursorColor: Colors.grey,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          // controller: usernameController,
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          onChanged: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'user name must not be empty';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 10.0, bottom: 80),
                            labelText: 'What is making you unhappy',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.blue),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.orange),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.orange[900],
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text('Submit',
                              style: GoogleFonts.poppins(fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),),

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