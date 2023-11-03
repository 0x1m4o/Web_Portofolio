import 'package:fluro/fluro.dart';
import '../pages/home/home.dart';

// Navigation
Handler homeHandler = Handler(
  handlerFunc: (context, parameters) => const HomePage(),
);
