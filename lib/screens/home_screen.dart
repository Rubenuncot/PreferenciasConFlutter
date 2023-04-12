import 'package:flutter/material.dart';
import 'package:preferences_app/shared_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = "home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('DarkMode: ${Preferences.isDarkMode ? 'Activado' : 'Desactivado'}'),
          const Divider(),
          Text('Género: ${Preferences.gender == 1 ? 'Masculino' : 'Femenino'}'),
          const Divider(),
          Text("Nombre: ${Preferences.name}"),
          const Divider(),
        ],
      ),
      drawer: const SideMenu()
    );
  }
}