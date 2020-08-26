import 'package:flutter/material.dart';

import '../../models/filtro.dart';

import '../../services/get_json_data.dart';

import '../../const/colors.dart' as ColorsConst;

class ListFiltro extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: GetJsonData.loadFiltros(),
        builder: (context, AsyncSnapshot<List<Filtro>> snapshot) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              final filtro = snapshot.data[index];
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(filtro.nombre[0].toUpperCase() + filtro.nombre.substring(1), style: TextStyle(color: ColorsConst.TITULOS, fontWeight: FontWeight.bold, fontSize: 20.0)),
              );
            }
          );
        }
      )
    );
  }
}