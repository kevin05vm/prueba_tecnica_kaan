import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../providers/filtro_provider.dart';

import '../../const/colors.dart' as ColorsConst;

class ListFiltro extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Consumer<FiltroProvider>(
        builder: (_, filtroProvider, w) {
          return (filtroProvider.filtroList != null)
          ? ListView.builder(
            itemCount: filtroProvider.filtroList.length,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              final filtro = filtroProvider.filtroList[index];
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  child: (filtroProvider.index == index) 
                    ? Text(filtro.nombre[0].toUpperCase() + filtro.nombre.substring(1), style: TextStyle(color: ColorsConst.TITULOS, fontWeight: FontWeight.bold, fontSize: 20.0))
                    : Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(filtro.nombre[0].toUpperCase() + filtro.nombre.substring(1), style: TextStyle(color: ColorsConst.FILTRO_INACTIVO, fontSize: 15.0)),
                    ),
                  onTap: () => filtroProvider.index = index
                )
              );
            }
          )
          : Container();
        }
      )
    );
  }
}