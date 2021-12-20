// To parse this JSON data, do
//
//     final categorias = categoriasFromJson(jsonString);

import 'dart:convert';

Categorias categoriasFromJson(String str) => Categorias.fromJson(json.decode(str));

String categoriasToJson(Categorias data) => json.encode(data.toJson());

class Categorias {
    Categorias({
        this.codigo,
        this.nombre,
        this.descripcion,
        this.imagen,
    });

    String? codigo;
    String? nombre;
    String? descripcion;
    Imagen? imagen;

    factory Categorias.fromJson(Map<String, dynamic> json) => Categorias(
        codigo: json["codigo"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        imagen: Imagen.fromJson(json["Imagen"]),
    );

    Map<String, dynamic> toJson() => {
        "codigo": codigo,
        "nombre": nombre,
        "descripcion": descripcion,
        "Imagen": imagen!.toJson(),
    };
}

class Imagen {
    Imagen({
        this.fotoCategorias,
    });

    String? fotoCategorias;

    factory Imagen.fromJson(Map<String, dynamic> json) => Imagen(
        fotoCategorias: json["fotoCategorias"],
    );

    Map<String, dynamic> toJson() => {
        "fotoCategorias": fotoCategorias,
    };
}
