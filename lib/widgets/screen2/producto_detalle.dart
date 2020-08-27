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
            Text(producto.name, style: TextStyle(color: ColorsConst.TITULOS, fontWeight: FontWeight.bold, fontSize: 26.0)),
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
              Container(margin: const EdgeInsets.only(right: 12.0), child: Text('\$${producto.price}.00', style: TextStyle(color: ColorsConst.PRECIO, fontWeight: FontWeight.bold)))
            ]
          ),
        ),
        Container(margin: const EdgeInsets.only(top: 18.0, bottom: 8.0), child: Text('About', style: TextStyle(color: ColorsConst.TITULOS, fontWeight: FontWeight.bold, fontSize: 20.0))),
        Text(producto.description, style: TextStyle(color: ColorsConst.TEXTO_DETALLE)),
        Container(margin: const EdgeInsets.only(top: 10.0, bottom: 20.0), child: Divider()),
        Row(
          children: <Widget>[
            Container(margin: const EdgeInsets.only(right: 20.0), child: Text('Allergies', style: TextStyle(color: ColorsConst.TITULOS))),
            Icon(Icons.keyboard_arrow_down, color: ColorsConst.TITULOS)
          ]
        ),
        Expanded(child: SizedBox()),
        Container(
          width: double.infinity,
          height: 50.0,
          margin: const EdgeInsets.only(bottom: 20.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [ColorsConst.AMARILLO, ColorsConst.ROSA]),
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[ BoxShadow( color: Colors.grey[400], blurRadius: 5.0, spreadRadius: 0.5) ]
          ),
          child: Center(child: Text('Add to order', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0)))
        )
      ]
    );
  }
}