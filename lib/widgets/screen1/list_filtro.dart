import 'package:flutter/material.dart';

import '../../providers/filtro_provider.dart';

import '../../const/colors.dart' as ColorsConst;

class ListFiltro extends StatelessWidget {

  final FiltroProvider filtroProvider;

  ListFiltro({
    @required this.filtroProvider
  });
  
  @override
  Widget build(BuildContext context) => Container(
    height: 50.0,
    child: ListView.builder(
      itemCount: filtroProvider.filtroList.length,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 4.0),
      itemBuilder: (BuildContext context, int index) {
        final filtro = filtroProvider.filtroList[index];
        return Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
          child: (filtroProvider.index == index) 
            ? Text(filtro.nombre[0].toUpperCase() + filtro.nombre.substring(1), style: Theme.of(context).textTheme.headline6)
            : Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(filtro.nombre[0].toUpperCase() + filtro.nombre.substring(1), style: Theme.of(context).textTheme.subtitle2.copyWith(color: ColorsConst.FILTRO_INACTIVO))
            ),
            onTap: () => filtroProvider.index = index
          )
        );
      }
    )
  );
}