import 'package:flutter/material.dart';

import '../../models/filtro.dart';

import '../../const/colors.dart' as ColorsConst;
import '../../const/routes.dart' as Routes;

class CardProducto extends StatelessWidget {

  final Producto producto;

  CardProducto({
    @required this.producto
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('lib/assets/images/${producto.image}', fit: BoxFit.cover, width: double.infinity, height: 120.0),
            Container(
              margin: const EdgeInsets.fromLTRB(8.0, 16.0, 4.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('${producto.name}', style: Theme.of(context).textTheme.subtitle2.copyWith(color: ColorsConst.TITULOS, fontWeight: FontWeight.bold)),
                  Text('\$${producto.price}.00', style: Theme.of(context).textTheme.subtitle2.copyWith(color: ColorsConst.TEXTO_CARD, fontWeight: FontWeight.bold))
                ]
              )
            ),
            Container(margin: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 16.0), child: Text(producto.description, maxLines: 2, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.caption.copyWith(color: ColorsConst.TEXTO_CARD)))
          ]
        )
      )
    ),
    onTap: () => Navigator.pushNamed(context, Routes.ROUTE_SCREEN2, arguments: producto)
  );
}