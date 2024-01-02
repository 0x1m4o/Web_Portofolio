import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:web_portofolio/core/network/api_util.dart';
import 'package:web_portofolio/feature/home/data/datasources/remote/medium_remote_datasource.dart';
import 'package:web_portofolio/feature/home/data/repositories_impl/sekolah_repository_impl.dart';
import 'package:web_portofolio/feature/home/domain/repositories/medium_repository.dart';
import 'package:web_portofolio/feature/home/domain/usecases/get_medium_usecase.dart';
import 'package:web_portofolio/feature/home/presentation/bloc/home/home_bloc.dart';

final sl = GetIt.instance;
Future<void> injectorSetup() async {
  sl.registerFactory(() => HomeBloc());

  sl.registerLazySingleton<Dio>(() => ApiUtil.dio);

  sl.registerLazySingleton<MediumRemoteDataSource>(
      () => MediumRemoteDatasourceImpl(sl()));

  sl.registerLazySingleton<MediumRepository>(() => MediumRepositoryImpl(sl()));
  sl.registerLazySingleton<GetMediumUseCase>(() => GetMediumUseCase(sl()));
}
