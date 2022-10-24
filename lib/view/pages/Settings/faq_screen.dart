import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/view_model/bloc/faq/faq_cubit.dart';
import 'package:toggle_list/toggle_list.dart';
import '../../components/faq/faq.dart';

class FaqScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      FaqCubit()
        ..getData(),
      child: BlocConsumer<FaqCubit, FaqState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          FaqCubit mycubit = FaqCubit.get(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,

            home: Scaffold(
              appBar: AppBar(
              centerTitle: true,
              leading: IconButton(
              onPressed: ()
          {
            Navigator.pop(context);
          },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
                title: Text(
                  'FAQ',
                  style: GoogleFonts.poppins(
                    // fontWeight: FontWeight.bold,
                     fontSize: 25,
          color: Colors.black),
                    ),
          backgroundColor: Colors.white,
          elevation: 10.0,
          ),
          body: mycubit.faqModel == null
              ? Center(child: CircularProgressIndicator())
              : ToggleList(
            children: List.generate(
              mycubit.faqModel!.data!.length,
                  (index) => customToggleItem(
                      title: mycubit.faqModel!.data![index].question,
                      content: mycubit.faqModel!.data![index].answer,

                      context: context),
            ),
            innerPadding: EdgeInsets.all(10),
          ),
          ),
          );
        },
      ),
    );
  }
}


