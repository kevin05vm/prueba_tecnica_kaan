import 'package:flutter/material.dart';

import 'router/router.dart';

import 'const/routes.dart' as Routes;
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba Técnica Kaan',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      initialRoute: Routes.ROUTE_SCREEN1,
      theme: ThemeData(fontFamily: 'Gilroy')
    );
  }
}