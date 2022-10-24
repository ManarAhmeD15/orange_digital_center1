import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../constans/token.dart';
import '../../../model/lecture_model.dart';
import '../../database/local/sharedPreferences.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());

  static LectureCubit get(context) => BlocProvider.of(context);

  LectureModel ?modelData;


  void getData() {
    DioHelper.getData(url: lectureEndPoint, token: token).then((value) {
      if (value.statusCode == 200) {
        modelData = LectureModel.fromJson(value.data);
        emit(LectureDataSuccess());
      }
    });
  }
}