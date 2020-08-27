import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:prueba_tecnica_kaan/providers/filtro_provider.dart';

import 'list_filtro.dart';
import 'grid_producto.dart';

class PanelCategorias extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<FiltroProvider>(context, listen: false).getData();
    });
    return Container(
      height: 1200.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(35.0), 
          topLeft: Radius.circular(35.0), 
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, -1.0)
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 34.0, 8.0, 12.0),
        child: Column(
          children: <Widget>[
            ListFiltro(),
            GridProducto()
          ]
        )
      )
    );
  }
}