import 'dart:convert';

Filtro filtroFromJson(String str) => Filtro.fromJson(json.decode(str));

String filtroToJson(Filtro data) => json.encode(data.toJson());

class Filtro {
    
  String nombre;

  Filtro({
    this.nombre,
  });

  factory Filtro.fromJson(Map<String, dynamic> json) => Filtro(
    nombre: json['nombre']
  );

  Map<String, dynamic> toJson() => {
    'nombre': nombre
  };
}