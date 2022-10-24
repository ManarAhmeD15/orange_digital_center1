import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:untitled/view/components/core/custom_text_form.dart';

import '../../view_model/bloc/signUp/sign_up_cubit.dart';
import 'login_screen.dart';


class SignUp extends StatelessWidget {
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          // TODO: implement listener
      if (state is ODCIRegsterSucsessState) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
              (Route<dynamic> route) => false,
        );

        showTopSnackBar(
          context,
          CustomSnackBar.success(
            message: "${state.message}",
          ),
        );
      } else if (state is ODCIRegsterEroreState) {
        showTopSnackBar(
          context,
          CustomSnackBar.error(
            message: '${state.message}',
          ),
        );
      }

        },
        builder: (context, state) {
          SignUpCubit myCubit = SignUpCubit.get(context);

         /* List labels=[
            ["Name",myCubit.name],
            ["E-Mail",myCubit.email],
            ["Password",myCubit.pass],
            ["Phone Number",myCubit.phone],

          ];

          */

          return MaterialApp(
            debugShowCheckedModeBanner: false,

            home: Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: myCubit.FormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Orange",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Text(
                                      "Digital",
                                      style: GoogleFonts.poppins(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Center",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 20.0, bottom: 20.0, top: 50.0),
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          /*
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ListView.separated(
                              itemBuilder: (context, index) => customTextFormField(
                                  controller: labels[index][1],
                                  name: labels[index][0],
                                  iconColor: orange,
                                  icon: Icons.remove_red_eye,
                                  isSuffixIcon:
                                  labels[index] == "Password" ? true : false),
                              separatorBuilder: (context, index) => SizedBox(
                                height: 20,
                              ),
                              itemCount: labels.length,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                            ),
                          ),

                           */

                          customTextFormField(
                            label: "Name",
                            type: TextInputType.emailAddress,
                            validator: (String value){
                              if(value.isEmpty)
                              {
                                print("name must not be empty");
                              }

                            },
                            controller: myCubit.name,
                          ),

                          SizedBox(
                            height: 15.0,
                          ),
                          customTextFormField(
                            label: "E-Mail",
                            type: TextInputType.emailAddress,
                            validator: (String value){
                              if(value.isEmpty)
                              {
                                print("email is not be empty");
                              }

                            },
                            controller: myCubit.email,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),

                          customTextFormField(
                            label: "Password",
                            type: TextInputType.visiblePassword,
                            validator: (String value){
                              if(value.isEmpty)
                              {
                                print("password must not be empty");
                              }
                              return null;

                            },
                            controller: myCubit.pass,
                            isPasswordShown: myCubit.isPassowrdShown,
                            suffix: IconButton(
                                onPressed: (){
                                  myCubit.ShowPass();
                                },
                                icon:(myCubit.isPassowrdShown)
                                    ? Icon(Icons.visibility,color: Colors.deepOrange,) : Icon(Icons.visibility_off,
                                  color: Colors.deepOrange,)),

                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          customTextFormField(
                            label: "Confirm Password",
                            type: TextInputType.visiblePassword,
                            validator: (String value){
                              if(value.isEmpty)
                              {
                                print("password must not be empty");
                              }
                              return null;

                            },
                            controller: myCubit.pass,
                            isPasswordShown: myCubit.isPassowrdShown,
                            suffix: IconButton(
                                onPressed: (){
                                  myCubit.ShowPass();
                                },
                                icon:(myCubit.isPassowrdShown)
                                    ? Icon(Icons.visibility,color: Colors.deepOrange,) : Icon(Icons.visibility_off,
                                  color: Colors.deepOrange,)),

                          ),
                          SizedBox(
                            height: 15.0,
                          ),

                          customTextFormField(
                              label: "Phone Number",
                              type: TextInputType.phone,
                              validator: (String value){
                                if(value.isEmpty)
                                {
                                  print("phone must not be empty");
                                }
                                return null;

                              },
                              controller: myCubit.phone,
                             // isPassword: myCubit.isPassword,
                              //suffix: myCubit.isPassword ? Icons.visibility: Icons.visibility_off,
                             // suffixPressed: (){myCubit.isPassword=!myCubit.isPassword;},
                          ),

                          SizedBox(
                            height: 40.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Gender",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "University",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 90,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.deepOrange),
                                        borderRadius: BorderRadius.circular(14)),
                                    child: Center(
                                      child: DropdownButton<String>(
                                        value: myCubit.GenderList.first,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        elevation: 16,
                                        underline: Container(
                                          height: 2,
                                        ),
                                        items: myCubit.GenderList.map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                        onChanged: (String? value) {
                                          // This is called when the user selects an item.
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.deepOrange),
                                        borderRadius: BorderRadius.circular(14)),
                                    child: Center(
                                      child: DropdownButton<String>(
                                        value: myCubit.UniversityList.first,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        elevation: 16,
                                        underline: Container(
                                          height: 2,
                                        ),
                                        items: myCubit.UniversityList.map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                        onChanged: (String? value) {
                                          // This is called when the user selects an item.
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical:10.0),
                                child: Text(
                                  "Grade",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 90,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.deepOrange),
                                        borderRadius: BorderRadius.circular(14)),
                                    child: Center(
                                      child: DropdownButton<String>(
                                        value: myCubit.GradeList.first,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        elevation: 16,
                                        underline: Container(
                                          height: 2,
                                        ),
                                        items: myCubit.GradeList.map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                        onChanged: (String? value) {
                                          // This is called when the user selects an item.
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height:15.0),
                            ],
                          ),


                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.orange[900],
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                myCubit.signUp();
                              },
                              child: Text(
                                'Sign Up',
                                style: GoogleFonts.poppins(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Stack(
                            children: [
                              Divider(
                                height: 30.0,
                                color: Colors.black,
                              ),
                              Positioned(
                                left: 140.0,
                                top: 2.0,
                                //bottom: 29.0,

                                child: Text(
                                  'OR',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                surfaceTintColor: Colors.white,
                                side: BorderSide(
                                    width: 3, color: Colors.deepOrange),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: Text(
                                'Login',
                                style: GoogleFonts.poppins(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
