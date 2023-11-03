import 'package:fluro/fluro.dart';
import 'router_handler.dart';
import 'app_routes.dart';

void configureRoutes(FluroRouter router) {
  // Home
  router.define(AppRoutes.home, handler: homeHandler);
}
