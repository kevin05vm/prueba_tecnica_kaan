import 'package:flutter/material.dart';

import '../../providers/filtro_provider.dart';

import 'card_producto.dart';

class GridProducto extends StatelessWidget {
 
 final FiltroProvider filtroProvider;

  GridProducto({
    @required this.filtroProvider
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: filtroProvider.productsList.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: MediaQuery.of(context).size.height * 0.001),
      itemBuilder: (context, index) {
        final producto = filtroProvider.productsList[index];
        return CardProducto(producto: producto);
      }
    );
  }
}