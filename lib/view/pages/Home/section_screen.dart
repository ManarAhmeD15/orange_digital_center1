import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/view/components/core/custom_bar.dart';

import '../../../view_model/bloc/sections/sections_cubit.dart';
import '../../components/core/card_item.dart';

class SectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      SectionsCubit()
        ..getData(),
      child: BlocConsumer<SectionsCubit, SectionsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SectionsCubit myCubit = SectionsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar:customAppBar("Sections", context,
                pop1: "All Sections",
                pop2: "Finished Sections",
                pop3: "Remaining Sections",
              ),

              body:
              myCubit.dataModel == null ? Center(child: CircularProgressIndicator()) :
              ListView.builder(
                  itemCount: myCubit.dataModel!.data!.length,
                  itemBuilder: (context, index) {
                    return cardItem(

                      myCubit.dataModel!.data![index]!.sectionSubject.toString(),
                      myCubit.dataModel!.data![index]!.sectionDate.toString(),
                      myCubit.dataModel!.data![index]!.sectionStartTime.toString(),
                      myCubit.dataModel!.data![index]!.sectionEndTime.toString(),

                    );


                  }


              ),


            ),
          );
        },
      ),
    );
  }

}