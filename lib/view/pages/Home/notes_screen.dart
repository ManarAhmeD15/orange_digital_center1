import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/view/components/core/custom_bar.dart';

import '../../../view_model/bloc/notes/notes_cubit.dart';
import 'add_notes.dart';


class NotesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: BlocConsumer<NotesCubit, NotesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          NotesCubit myCubit=NotesCubit.get(context) ;
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            home: Scaffold(
              appBar:customAppBar(
                "Notes",
                context,
                noFilter: true,
                noElevation: true,
              ),

              body:
                  Center(
                    child: Container(
                      child: Text('There is No Data To Show ',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,),
                      ),
                    )
                  ),
                  floatingActionButton:
                  FloatingActionButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNotes()));


                    },
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.add,),
                  )



            ),
          );
        },
      ),
    );
  }

}