import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../providers/filtro_provider.dart';

import 'card_producto.dart';

class GridProducto extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<FiltroProvider>(
        builder: (_, filtroProvider, w) {
          return (filtroProvider.productsList.length > 0) 
          ? GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: filtroProvider.productsList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              final producto = filtroProvider.productsList[index];
              return CardProducto(producto: producto);
            }
          )
          : Container();
        }
      )
    );
  }
}