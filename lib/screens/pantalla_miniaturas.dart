import 'package:flutter/material.dart';

class PantallaMiniaturas extends StatelessWidget {
  const PantallaMiniaturas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("3 Miniaturas")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/foto1.webp",
              width: 100,
              height: 100,
            ), // <--- Corregido a .webp
            Image.asset(
              "assets/foto2.webp",
              width: 100,
              height: 100,
            ), // <--- Corregido a .webp
            Image.asset(
              "assets/foto3.webp",
              width: 100,
              height: 100,
            ), // <--- Corregido a .webp
          ],
        ),
      ),
    );
  }
}
