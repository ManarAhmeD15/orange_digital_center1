import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/constans/token.dart';


import '../../../model/exams_model.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'exams_state.dart';

class ExamsCubit extends Cubit<ExamsState> {
  ExamsCubit() : super(ExamsInitial());
  static ExamsCubit get(context)=>BlocProvider.of(context);

  ExamsModel ?exams;

  List midterms = [];
  List finals = [];

  void getData(){
    DioHelper.getData(url: examsEndPoint,token: token).then((value)
    {
      if(value.statusCode==200)
      {
        exams=ExamsModel.fromJson(value.data);


        midtermsOrFinals(exams);
        print(exams!.data);
        emit(DataRetrieved(),);

      }

    });

  }
  void midtermsOrFinals(exams)
  {
    for(int i = 0; i<exams!.data!.length; i++)
    {
      if(exams!.data![i].toJson()["final"] == true)
        finals.add(exams.data![i]);
      else
        midterms.add(exams.data![i]);
    }

  }



}