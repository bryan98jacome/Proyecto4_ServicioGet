
import 'package:app_inventmarket/src/models/productos_model.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  const DataCard({Key? key, required this.model}) : super(key: key);
  final Productos model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(15.0), 
      ),
          child: ListTile(
          title: Text("Codigo: " + "/n" + model.nombre),
          subtitle: Text(model.valor.toString() + model.stock.toString()),
          //trailing: Text(model.stock.toString())
          )
        );
  }
}