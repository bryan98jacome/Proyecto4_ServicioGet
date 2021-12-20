class Productos {
  

  Productos({this.id, this.nombre, this.valor, this.stock});

  var id;
  var nombre;
  var valor;
  var stock;

  factory Productos.fromJson(Map<String, dynamic> json) {
    return Productos(
        id: json['_id'],
        nombre: json['nombre'],
        valor: json['valorVenta'],
        stock: json['stock']);
  }
}
