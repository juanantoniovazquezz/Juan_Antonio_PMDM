import 'package:flutter/material.dart';

class PantallaIconos extends StatelessWidget {
  const PantallaIconos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("5 Iconos en Fila")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.home, size: 40, color: Colors.blue),
            Icon(Icons.favorite, size: 40, color: Colors.red),
            Icon(Icons.audiotrack, size: 40, color: Colors.green),
            Icon(Icons.beach_access, size: 40, color: Colors.orange),
            Icon(Icons.airplanemode_active, size: 40, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}
