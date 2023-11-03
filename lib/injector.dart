import 'package:get_it/get_it.dart';
import 'package:web_portofolio/application/home/bloc/home_bloc.dart';

final sl = GetIt.instance;
Future<void> injectorSetup() async {
  sl.registerFactory(() => HomeBloc());
}
