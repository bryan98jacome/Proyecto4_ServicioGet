import 'dart:convert';
import 'package:app_inventmarket/src/models/productos_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';


Future<List<Productos>> listProductos() async {
  final response = await http.get(Uri.parse('http://192.168.0.110:4000/api/productos'));
  return compute(goToList, response.body);
}

List<Productos> goToList(String responseBody) {
  final pasar = json.decode(responseBody);

  return pasar['producto']
      .map<Productos>((json) => Productos.fromJson(json) )
      .toList();
}

mapProducto(Productos producto, bool mapId) {
  Map data;
  if (mapId) {
    data = {
      '_id': '${producto.id}',
      'nombre': '${producto.nombre}',
      'valorVenta': '${producto.valor}',
      'stock': '${producto.stock}',
    };
  } else {
    data = {
      'nombre': '${producto.nombre}',
      'valorVenta': '${producto.valor}',
      'stock': '${producto.stock}',
    };
  }

  return data;
}
