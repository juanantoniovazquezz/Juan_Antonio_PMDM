import 'package:flutter/material.dart';

import 'menu_lateral.dart';

class PantallaReto extends StatelessWidget {
  const PantallaReto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('9. Reto Container')),
      drawer: const MenuLateral(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          width: 280,
          height: 280,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.orange, width: 10),
          ),
          child: const Text(
            'H',
            style: TextStyle(fontSize: 180, color: Colors.orange),
          ),
        ),
      ),
    );
  }
}
