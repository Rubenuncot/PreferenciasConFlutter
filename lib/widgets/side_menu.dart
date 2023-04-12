import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DraweHeader(),
          ListTile(
            leading: const Icon(Icons.pages),
            title: const Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, HomeScreen.routerName),
          ),
          ListTile(
            leading: const Icon(Icons.people_alt_outlined),
            title: const Text('People'),
            onTap: () => Navigator.pushReplacementNamed(context, SettingsScreen.routerName),

          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () => Navigator.pushReplacementNamed(context, SettingsScreen.routerName),
          )
        ],
      ),
    );
  }
}

class _DraweHeader extends StatelessWidget {
  const _DraweHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('utils/menu-img.jpg'),
              fit: BoxFit.cover)),
      child: Container(),
    );
  }
}
