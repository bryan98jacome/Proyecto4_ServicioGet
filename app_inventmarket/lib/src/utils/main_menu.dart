import 'package:app_inventmarket/src/widgets/config_widget.dart';
import 'package:app_inventmarket/src/widgets/init_widget.dart';
import 'package:app_inventmarket/src/widgets/perfil_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem{
  String label;
  IconData icon;

  MenuItem(this.label, this.icon);
}

List<MenuItem> menuOptions = [
  MenuItem("Configuración", Icons.settings),
  MenuItem("Inicio", Icons.home),
  MenuItem("Perfil", Icons.person)
];

List<Widget> contentWidgets = [
  const ConfigWidget(),
  const InicioWidget(),
  const PerfilWidget()
  //const DataCard()
];
