import 'package:get_it/get_it.dart';
import 'package:web_portofolio/feature/home/presentation/bloc/home/home_bloc.dart';

final sl = GetIt.instance;
Future<void> injectorSetup() async {
  sl.registerFactory(() => HomeBloc());
}
