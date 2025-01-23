import 'package:flutter/material.dart';
import 'package:tac_map/settings.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key, required this.title});
  final String title;

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Menu",
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                ),
                child: Text("Menu")),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text("Map"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const SettingsPage(title: "Settings")));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Tactical Map',
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
