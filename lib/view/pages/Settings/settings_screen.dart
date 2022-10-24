import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/view/pages/Settings/support_screen.dart';
import 'package:untitled/view/pages/Settings/faq_screen.dart';
import 'package:untitled/view/pages/login_screen.dart';
import 'package:untitled/view/pages/News/our_partenrs.dart';
import 'package:untitled/view/pages/Settings/terms_screen.dart';

import '../../../view_model/bloc/settings/settings_cubit.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: BlocConsumer<SettingsCubit, SettingsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SettingsCubit myCubit = SettingsCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            home: Scaffold(
              body: SafeArea(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children:[

                      Text("Settings",
                      style: GoogleFonts.poppins(fontSize: 25.0,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => FaqScreen()));
                      },
                      child: ListTile(
                        leading: Text("FAQ",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,

                          ),),
                        trailing: Icon(Icons.arrow_forward_ios),

                      ),
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.black,

                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                                Terms()));
                      },
                      child: ListTile(
                        leading: Text("Terms & Conditions",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,

                          ),),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.black,

                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                                OurPartners()));
                      },
                      child: ListTile(
                        leading: Text("Our Partenrs",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,

                          ),),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.black,

                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => SupportScreen()));
                      },
                      child: ListTile(
                        leading: Text("Support",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,

                          ),),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.black,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                        builder: (context)=>
                            AlertDialog(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 100,
                              vertical: 20
                          ),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Logout",
                                    style: GoogleFonts.poppins(),),
                                  SizedBox(height: 15.0,),
                                  Text("Are you sure?",
                                      style: GoogleFonts.poppins(fontSize: 15)),
                                ],
                              ),


                              actions: [
                                Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.deepOrange, width: 3),
                                      color: Colors.white
                                  ),
                                  child: MaterialButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.poppins(
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: Colors.deepOrange, width: 3),
                                    color: Colors.deepOrange,
                                  ),
                                  child: MaterialButton(
                                    onPressed: () =>
                                        Navigator.pushReplacement(context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen(),),),
                                    child: Text(
                                      "Sure",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                              ],
                        ));},

                    child: ListTile(
                      leading: Text("Log out",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,

                        ),),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ),

                  ],
                ),
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