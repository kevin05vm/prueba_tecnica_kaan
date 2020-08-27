import 'package:flutter/material.dart';

import '../../const/colors.dart' as ColorsConst;

class AppBarTitle extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) => Row(
    children: <Widget>[
      Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
            colors: [ColorsConst.AMARILLO, ColorsConst.ROSA]
          ),
          borderRadius: BorderRadius.circular(13.0)
        ),
        child: Image.asset('lib/assets/icons/back.png')
      ),
      Expanded(child: Center(child: Text('Chicks & Salsa', style: Theme.of(context).textTheme.headline6))),
      SizedBox(width: 50.0)
    ]
  );
}