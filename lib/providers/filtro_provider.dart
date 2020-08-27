import 'package:flutter/material.dart';

import '../models/filtro.dart';
import '../services/get_json_data.dart';

class FiltroProvider with ChangeNotifier {

  int _index = 0;

  List<Filtro> _filtroList = List();

  List<Producto> _productsList = List();

  int get index => this._index;
  List<Filtro> get filtroList => this._filtroList;
  List<Producto> get productsList => this._productsList;

  set index(int value) {
    this._index = value;
    notifyListeners();
    getProducts();
  }

  set filtroList(List<Filtro> value) {
    this._filtroList = value;
    notifyListeners();
  }

  set productsList(List<Producto> value) {
    this._productsList = value;
    notifyListeners();
  }

  getData() async {
    filtroList = await GetJsonData.loadData();
    getProducts();
  }

  getProducts() {
    productsList.clear();
    (index == 0) ? filtroList.forEach((value) {
      if(value.productos != null) 
        productsList.addAll(value.productos);
    })
    : productsList.addAll(filtroList[index].productos);
  }

}