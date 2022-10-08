import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_html_css/simple_html_css.dart';
import 'package:untitled/view_model/bloc/terms/terms_cubit.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (context) => TermsCubit()..getData(),
        child: BlocConsumer<TermsCubit, TermsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            TermsCubit term =TermsCubit.get(context);
            return MaterialApp(
              home:
              Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  centerTitle: true,
                  leading:  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon:Icon(Icons.arrow_back_ios),
                    color: Colors.black,
                  ),
                  title: Text('Terms & Conditions',
                    style: GoogleFonts.poppins(fontSize: 20.0,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                  elevation: 0.0,


                ),
                body: term.termModel ==null ?
                    Center(child: CircularProgressIndicator()):
                    SingleChildScrollView(
                      child: Expanded(
                        child: Container(
                          color: Colors.white,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: HTML.toTextSpan(
                                context,
                                term.htmlContent!,
                                defaultTextStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 19,
                                    decoration: TextDecoration.none
                                )
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