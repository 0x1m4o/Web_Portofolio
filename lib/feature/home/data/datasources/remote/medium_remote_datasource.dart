import 'package:dio/dio.dart';
import 'package:web_portofolio/core/base/base_datasource.dart';
import 'package:web_portofolio/feature/home/data/models/medium_model.dart';
import 'package:web_portofolio/feature/home/presentation/resources/constants.dart';

abstract class MediumRemoteDataSource {
  Future<List<MediumModel>> getMediumData();
}

class MediumRemoteDatasourceImpl extends BaseDataSource
    implements MediumRemoteDataSource {
  final Dio _dio;
  MediumRemoteDatasourceImpl(this._dio);
  @override
  Future<List<MediumModel>> getMediumData() async {
    final response = await _dio.get(Constants.mediumurl);

    return List<MediumModel>.from(
        (response.data as List).map((e) => MediumModel.fromJson(e)));
  }
}
