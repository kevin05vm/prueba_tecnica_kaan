import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../models/filtro.dart';

class GetJsonData {

  static Future<String> _loadFromAsset() async {
    return await rootBundle.loadString('lib/data/data.json');
  }

  static Future<List<Filtro>> loadFiltros() async {
    String jsonString = await _loadFromAsset();
    final jsonResponse = jsonDecode(jsonString);
    List<Filtro> filtroList = List();
    jsonResponse.forEach((key, array) {
      final filtro = Filtro(
        nombre: key
      );
      filtroList.add(filtro);
    });
    return filtroList;
  }
}