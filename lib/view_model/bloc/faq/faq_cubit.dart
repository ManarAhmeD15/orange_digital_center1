import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/constans/token.dart';
import 'package:untitled/model/faq_model.dart';
import 'package:untitled/view_model/database/network/dio_helper.dart';
import 'package:untitled/view_model/database/network/end_points.dart';

part 'faq_state.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(FaqInitial());
  static FaqCubit get(context)=>BlocProvider.of(context);

  FaqModel ?faqModel;
  void getData()
  {
    DioHelper.getData(url: faqEndPoint,token: token).then((value)
    {
      if(value.statusCode==200)
        {
          faqModel=FaqModel.fromJson(value.data);
          emit(FaqSuccess(),);
        }

    });


  }


}
