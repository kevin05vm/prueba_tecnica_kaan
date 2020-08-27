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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent
    ));
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: height * 0.45,
                child: Image.asset('lib/assets/images/${producto.image}', fit: BoxFit.cover)
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
                    margin: EdgeInsets.only(top: height * 0.25),
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
            ]
          )
        )
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          width: double.infinity,
          height: 50.0,
          margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [ColorsConst.AMARILLO, ColorsConst.ROSA]),
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[ BoxShadow( color: Colors.grey[400], blurRadius: 5.0, spreadRadius: 0.5) ]
          ),
          child: Center(child: Text('Add to order', style: Theme.of(context).textTheme.button.copyWith(color: Colors.white, fontWeight: FontWeight.bold)))
        ),
      )
    );
  }
}