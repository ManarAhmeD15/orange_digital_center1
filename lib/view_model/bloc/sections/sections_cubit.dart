import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';


import '../../../constans/token.dart';
import '../../../model/sections_model.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());
  static SectionsCubit get(context)=>BlocProvider.of(context);
  SectionModel ?dataModel;

  void getData()
  {
    DioHelper.getData(url: sectionEndPoint,token: token).then((value) {
      if(value.statusCode==200)
        {
          dataModel =SectionModel.fromJson(value.data);
          emit(SectionDataSuccess());
        }

    });


  }

}
