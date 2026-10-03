import 'package:flutter/material.dart';

import 'screens/pantalla_datos.dart'; // Cargamos la primera pantalla por defecto

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Resumen Tema 1',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const PantallaDatos(), // Nuestra pantalla inicial
    );
  }
}
