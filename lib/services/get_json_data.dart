import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../models/filtro.dart';

class GetJsonData {

  static Future<String> _loadFromAsset() async {
    return await rootBundle.loadString('lib/data/data.json');
  }

  static Future<List<Filtro>> loadData() async {
    String jsonString = await _loadFromAsset();
    final jsonResponse = jsonDecode(jsonString);
    List<Filtro> filtroList = List();
    jsonResponse.forEach((key, array) {
      final filtro = Filtro(
        nombre: key,
        productos: List<Producto>.from(array.map((x) => Producto.fromJson(x)))
      );
      filtroList.add(filtro);
    });
    filtroList.insert(0, Filtro(nombre: 'todos'));
    return filtroList;
  }
}