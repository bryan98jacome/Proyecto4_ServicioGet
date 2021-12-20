// To parse this JSON data, do
//
//     final inventario = inventarioFromJson(jsonString);

import 'dart:convert';

Inventario inventarioFromJson(String str) => Inventario.fromJson(json.decode(str));

String inventarioToJson(Inventario data) => json.encode(data.toJson());

class Inventario {
    Inventario({
        this.codigo,
        this.nombre,
        this.productos,
    });

    String? codigo;
    String? nombre;
    Productos? productos;

    factory Inventario.fromJson(Map<String, dynamic> json) => Inventario(
        codigo: json["codigo"],
        nombre: json["nombre"],
        productos: Productos.fromJson(json["productos"]),
    );

    Map<String, dynamic> toJson() => {
        "codigo": codigo,
        "nombre": nombre,
        "productos": productos!.toJson(),
    };
}

class Productos {
    Productos({
        this.productos,
    });

    ProductosClass? productos;

    factory Productos.fromJson(Map<String, dynamic> json) => Productos(
        productos: ProductosClass.fromJson(json["Productos"]),
    );

    Map<String, dynamic> toJson() => {
        "Productos": productos!.toJson(),
    };
}

class ProductosClass {
    ProductosClass();

    factory ProductosClass.fromJson(Map<String, dynamic> json) => ProductosClass(
    );

    Map<String, dynamic> toJson() => {
    };
}
