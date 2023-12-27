import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portofolio/feature/home/presentation/resources/theme/app_themes.dart';
import 'package:web_portofolio/feature/home/presentation/bloc/home/home_bloc.dart';
import 'package:web_portofolio/feature/home/presentation/routes/app_routes.dart';
import 'package:web_portofolio/feature/home/presentation/routes/application.dart';
import 'package:web_portofolio/feature/home/presentation/routes/router_config.dart';
import 'injector.dart';

void main() async {
  await injectorSetup();
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key) {
    configureRoutes(Application.router);
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeBloc>(),
      child: MaterialApp(
        key: key,
        debugShowCheckedModeBanner: false,
        theme: AppThemes.appThemeData[AppTheme.lightTheme],
        initialRoute: AppRoutes.home,
        onGenerateRoute: Application.router.generator,
        builder: (context, child) => ResponsiveBreakpoints.builder(
            child: ClampingScrollWrapper.builder(context, child!,
                dragWithMouse: true),
            breakpoints: [
              const Breakpoint(start: 0, end: 576, name: MOBILE),
              const Breakpoint(start: 577, end: 992, name: TABLET),
              const Breakpoint(start: 993, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ]),
      ),
    );
  }
}
