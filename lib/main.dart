import 'package:flutter/material.dart';
import 'package:tac_map/map.dart';

void main() {
  runApp(const TacMapApp());
}

class TacMapApp extends StatelessWidget {
  const TacMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tactical Map',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MapPage(title: "Tactical Map"),
    );
  }
}
