import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';

import '../providers/filtro_provider.dart';

import '../widgets/screen1/app_bar_title.dart';
import '../widgets/screen1/search_bar.dart';
import '../widgets/screen1/panel_categorias.dart';

import '../const/colors.dart' as ColorsConst;

class Screen1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: ColorsConst.BACKGROUND_SCREEN_1
    ));
    return ChangeNotifierProvider(
      create: (_) => FiltroProvider(),
      child: Scaffold(
        backgroundColor: ColorsConst.BACKGROUND_SCREEN_1,
        appBar: AppBar(
          title: AppBarTitle(),
          backgroundColor: ColorsConst.BACKGROUND_SCREEN_1,
          elevation: 0.0,
          brightness: Brightness.light
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
               Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                child: SearchBar()
              ),
              PanelCategorias()
            ]
          )
        )
      )
    );
  }
}