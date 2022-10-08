import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/view/components/core/custom_bar.dart';
import '../../../view_model/bloc/exams/exams_cubit.dart';
import '../../components/core/card_item.dart';

class MidetermsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExamsCubit()..getData(),
      child: BlocConsumer<ExamsCubit, ExamsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          ExamsCubit myCubit = ExamsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: customAppBar("Midterms",
                  context,
                pop1: "All Midterms",
                pop2: "Finished Midterms",
                pop3: "Remaining Midterms",
              ),
              body: myCubit.exams == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                  itemCount: myCubit.midterms.length,
                  itemBuilder: (context, index) {
                    return cardItem(
                      myCubit.midterms[index].examSubject.toString(),
                      myCubit.midterms[index].examDate.toString(),
                      myCubit.midterms[index].examStartTime.toString(),
                      myCubit.midterms[index].examEndTime.toString(),
                    );
                  }),
            ),
          );
        },
      ),
    );
  }
}
