import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/filtro.dart';

import '../widgets/screen2/producto_detalle.dart';

import '../const/colors.dart' as ColorsConst;

class Screen2 extends StatelessWidget {

  final Producto producto;

  Screen2({
    @required this.producto
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,  
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: height * 0.45,
              child: Image.asset('lib/assets/images/${producto.image}', fit: BoxFit.cover)
            ),
            SafeArea(
              child: GestureDetector(
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  margin: const EdgeInsets.only(left: 20.0, top: 10.0),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(13.0)),
                  child: Image.asset('lib/assets/icons/back.png', color: ColorsConst.AMARILLO)
                ),
                onTap: () => Navigator.pop(context)
              )
            ),
            Container(
              margin: const EdgeInsets.only(top: 350.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(35.0), topLeft: Radius.circular(35.0))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 22.0),
                child: ProductoDetalle(producto: producto)
              )
            )
          ]
        )
      )
    );
  }
}