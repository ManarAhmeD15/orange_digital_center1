import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/view/components/core/custom_bar.dart';
import '../../../view_model/bloc/exams/exams_cubit.dart';
import '../../components/core/card_item.dart';

class FinalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExamsCubit()..getData(),
      child: BlocConsumer<ExamsCubit, ExamsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          ExamsCubit finalCubit = ExamsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar:

              customAppBar("Finals",
                context,
              pop1: "All Finals",
              pop2:"Finished Finals",
              pop3: "Remaining Finals"),
              body: finalCubit.exams == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                  itemCount: finalCubit.finals.length,
                  itemBuilder: (context, index) {
                    return cardItem(
                      finalCubit.finals[index].examSubject.toString(),
                      finalCubit.finals[index].examDate.toString(),
                      finalCubit.finals[index].examStartTime.toString(),
                      finalCubit.finals[index].examEndTime.toString(),
                    );
                  }),
            ),
          );
        },
      ),
    );
  }
}
