import 'package:flutter/material.dart';

class ConfigWidget extends StatelessWidget {
  const ConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Icon(Icons.settings, size: 50.0),
          Text("Configuracion", style: Theme.of(context).textTheme.headline4)
        ],
      ),
    );
  }
}