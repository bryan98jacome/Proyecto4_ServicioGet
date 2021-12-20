import 'package:app_inventmarket/src/models/productos_model.dart';
import 'package:app_inventmarket/src/services/data_service.dart';
import 'package:flutter/material.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key? key}) : super(key: key);
  

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Productos"),
      ),
      body: getClients(context, listProductos()),
    );
  }

  Widget getClients(BuildContext context, Future<List<Productos>> futureProducto) {
    return FutureBuilder(
      future: futureProducto,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          //En este case estamos a la espera de la respuesta, mientras tanto mostraremos el cargando...
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator());

          case ConnectionState.done:
            if (snapshot.hasError) {
              return Container(
                alignment: Alignment.center,
                child: Center(
                  child: Text('Error: ${snapshot.error}'),
                ),
              );
            }
             //print(snapshot.data);
            return snapshot.data != null
                ? clientList(snapshot.data)
                : Container(
                    alignment: Alignment.center,
                    child: const Center(
                      child: Text('Sin Datos'),
                    ),
                  );
          default:
            return const Text('Recarga la pantalla....!');
        }
      },
    );
  }

  Widget clientList(List<Productos> productos) {
    return ListView.builder(
      itemCount: productos.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("Codigo: " + productos[index].id + "\n" + productos[index].nombre),
          subtitle: Text("  Stock      Precio\n" + 
            productos[index].stock.toString() + "        " + productos[index].valor.toString(),  
            textAlign: TextAlign.center, 
            style: const TextStyle(
              fontSize: 14.0, 
              letterSpacing: 2
            )
          ),
          leading: const CircleAvatar(
            child: Icon(Icons.brunch_dining_outlined)),
          );
      },
    );
  }
}
