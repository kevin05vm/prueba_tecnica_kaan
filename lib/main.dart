import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'router/router.dart';

import 'const/routes.dart' as Routes;
import 'const/colors.dart' as ColorsConst;
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
      title: 'Prueba Técnica Kaan',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      initialRoute: Routes.ROUTE_SCREEN1,
      theme: ThemeData(
        fontFamily: 'Gilroy',
        textTheme: TextTheme(
          headline6: TextStyle(color: ColorsConst.TITULOS, fontWeight: FontWeight.bold),
          headline5: TextStyle(color: ColorsConst.TITULOS, fontWeight: FontWeight.bold)
        )
      )
    );
  }
}