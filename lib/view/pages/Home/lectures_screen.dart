import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/view/components/core/custom_bar.dart';

import '../../../view_model/bloc/lecture/lecture_cubit.dart';
import '../../components/core/card_item.dart';


class LecturesScreen extends StatelessWidget {
  const LecturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LectureCubit()..getData(),
      child: BlocConsumer<LectureCubit, LectureState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {

    //  OBJECT
    LectureCubit lectureCubit =LectureCubit.get(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
          appBar: customAppBar('Lectures',
            context,
            pop1: "All Lectures",
            pop2: "Finished Lectures",
            pop3: "Remaining Lectures",
          ),
          body:
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: lectureCubit.modelData ==null ? Center(child: CircularProgressIndicator()) :
            ListView.builder(
                itemCount: lectureCubit.modelData!.data!.length,
                itemBuilder: (context,index) {

                  return cardItem(
                    lectureCubit.modelData!.data![index]!.lectureSubject.toString(),
                    lectureCubit.modelData!.data![index]!.lectureStartTime.toString(),
                    lectureCubit.modelData!.data![index]!.lectureEndTime.toString(),
                    lectureCubit.modelData!.data![index]!.lectureDate.toString(),

                  );
                }),
          ),


        ),
      );
  },
),
    );
  }
}
