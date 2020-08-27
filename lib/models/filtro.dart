import 'dart:convert';

Filtro filtroFromJson(String str) => Filtro.fromJson(json.decode(str));

String filtroToJson(Filtro data) => json.encode(data.toJson());

class Filtro {

  String nombre;
  List<Producto> productos;

  Filtro({
    this.nombre,
    this.productos
  });


  factory Filtro.fromJson(Map<String, dynamic> json) => Filtro(
    nombre: json['nombre'],
    productos: List<Producto>.from(json['productos'].map((x) => Producto.fromJson(x)))
  );

  Map<String, dynamic> toJson() => {
    'nombre': nombre,
    'productos': List<dynamic>.from(productos.map((x) => x.toJson()))
  };
}

class Producto {

  String name;
  String description;
  String price;
  String image;
    
  Producto({
    this.name,
    this.description,
    this.price,
    this.image
  });

  factory Producto.fromJson(Map<String, dynamic> json) => Producto(
    name: json['name'],
    description: json['description'],
    price: json['price'],
    image: json['image']
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'price': price,
    'image': image
  };
}
