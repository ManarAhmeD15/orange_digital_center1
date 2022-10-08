import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:table_calendar/table_calendar.dart';
import 'package:untitled/view/components/core/custom_bar.dart';

import '../../../view_model/bloc/notes/notes_cubit.dart';

class EventsScreen extends StatelessWidget {
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
            home: Scaffold(
                appBar:
                customAppBar("Events", context,noFilter :true,),

                body: TableCalendar(
                  firstDay: DateTime.utc(2010,10,20),
                  lastDay: DateTime.utc(2040,10,20),
                  focusedDay: DateTime.now(),
                  headerVisible: true,
                  daysOfWeekVisible: true,
                  sixWeekMonthsEnforced: true,
                  shouldFillViewport: false,
                  headerStyle: HeaderStyle(titleTextStyle: TextStyle(fontSize: 20, color: Colors.deepOrange, fontWeight: FontWeight.w800)),
                  calendarStyle: CalendarStyle(todayTextStyle: TextStyle(fontSize:20, color: Colors.white, fontWeight: FontWeight.bold )),
                ),
            ),






          );
        },
      ),
    );
  }

}