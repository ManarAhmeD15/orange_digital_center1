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
    LectureCubit myCubit =LectureCubit.get(context);
    return MaterialApp(
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
            child: myCubit.modelData ==null ? Center(child: CircularProgressIndicator()) :
            ListView.builder(
                itemCount: myCubit.modelData!.data!.length,
                itemBuilder: (context,index) {

                  return cardItem(
                    myCubit.modelData!.data![index]!.lectureSubject.toString(),
                    myCubit.modelData!.data![index]!.lectureStartTime.toString(),
                    myCubit.modelData!.data![index]!.lectureEndTime.toString(),
                    myCubit.modelData!.data![index]!.lectureDate.toString(),

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
