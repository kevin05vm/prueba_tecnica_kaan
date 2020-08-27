import 'package:flutter/material.dart';

import '../../models/filtro.dart';

import '../../const/colors.dart' as ColorsConst;

class ProductoDetalle extends StatelessWidget {
  
  final Producto producto;
  
  ProductoDetalle({
    @required this.producto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(producto.name, style: Theme.of(context).textTheme.headline5),
            Container(margin: const EdgeInsets.only(right: 12.0), child: Image.asset('lib/assets/icons/icon.png'))
          ]
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                decoration: BoxDecoration(
                  color: ColorsConst.CHIP_HALAL,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text('HALAL', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10.0)),
              ),
              Container(margin: const EdgeInsets.only(right: 12.0), child: Text('\$${producto.price}.00', style: Theme.of(context).textTheme.subtitle2.copyWith(color: ColorsConst.PRECIO, fontWeight: FontWeight.bold)))
            ]
          ),
        ),
        Container(margin: const EdgeInsets.only(top: 18.0, bottom: 8.0), child: Text('About', style: Theme.of(context).textTheme.headline6)),
        Text(producto.description, style: Theme.of(context).textTheme.bodyText1.copyWith(color: ColorsConst.TEXTO_DETALLE)),
        Container(margin: const EdgeInsets.only(top: 10.0, bottom: 20.0), child: Divider()),
        Row(
          children: <Widget>[
            Container(margin: const EdgeInsets.only(right: 20.0), child: Text('Allergies', style: Theme.of(context).textTheme.bodyText1.copyWith(color: ColorsConst.TITULOS))),
            Icon(Icons.keyboard_arrow_down, color: ColorsConst.TITULOS)
          ]
        )
      ]
    );
  }
}