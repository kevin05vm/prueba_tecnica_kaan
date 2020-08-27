import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/screen1.dart';
import '../screens/screen2.dart';

import '../const/routes.dart' as Routes;

class Router {
  
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.ROUTE_SCREEN1: return CupertinoPageRoute(builder: (_) => Screen1());
      case Routes.ROUTE_SCREEN2: return CupertinoPageRoute(builder: (_) => Screen2(producto: settings.arguments));
      default:
        return CupertinoPageRoute(builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))));
    }
  }
}