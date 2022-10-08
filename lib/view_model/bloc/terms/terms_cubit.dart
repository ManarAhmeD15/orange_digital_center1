import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/constans/token.dart';
import 'package:untitled/model/term_model.dart';
import 'package:untitled/view_model/database/network/dio_helper.dart';
import 'package:untitled/view_model/database/network/end_points.dart';

part 'terms_state.dart';

class TermsCubit extends Cubit<TermsState> {
  TermsCubit() : super(TermsInitial());
  static TermsCubit get(context)=>BlocProvider.of(context);
  String ?htmlContent;
  TermModel ?termModel;

  void getData()
  {
    DioHelper.getData(url: termsEndPoint,token: token).then((value) {
      if (value.statusCode==200)
        {
          termModel=TermModel.fromJson(value.data);
          htmlContent=termModel!.data!.terms;
          emit(TermsSuccess());
        }

    });
  }


}
