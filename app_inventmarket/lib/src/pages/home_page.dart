import 'package:app_inventmarket/src/providers/main_provider.dart';
import 'package:app_inventmarket/src/utils/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final List<String> _options = ["Configuración", "Inicio", "Perfil"];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context, listen: true);
   return Scaffold(
      appBar: AppBar(

          leading: SizedBox.square(
              dimension: 60.0,
              child: Switch(
                value: mainProvider.mode,
                onChanged: (bool value) async {
                  mainProvider.mode = value;
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool("mode", value);
                })),
                
                title: Text(_options[mainProvider.index])),
                body: contentWidgets[mainProvider.index],
                bottomNavigationBar: BottomNavigationBar(
                  onTap: (int index) {
                    mainProvider.index = index;
                  },
                  type: BottomNavigationBarType.fixed,
                  items: menuOptions
                  .map((e) => BottomNavigationBarItem(label: e.label, icon: Icon(e.icon))).toList(),
                  currentIndex: mainProvider.index
                ),
    );
  }
}