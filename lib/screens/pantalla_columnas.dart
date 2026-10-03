import 'package:flutter/material.dart';

class PantallaColumnas extends StatelessWidget {
  const PantallaColumnas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("5 Imágenes en Columna")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/foto1.webp",
                height: 120,
              ), // <--- Corregido a .webp
              const SizedBox(height: 10),
              Image.asset(
                "assets/foto2.webp",
                height: 120,
              ), // <--- Corregido a .webp
              const SizedBox(height: 10),
              Image.asset(
                "assets/foto3.webp",
                height: 120,
              ), // <--- Corregido a .webp
              const SizedBox(height: 10),
              Image.asset(
                "assets/foto4.webp",
                height: 120,
              ), // <--- Corregido a .webp
              const SizedBox(height: 10),
              Image.asset(
                "assets/foto5.webp",
                height: 120,
              ), // <--- Corregido a .webp
            ],
          ),
        ),
      ),
    );
  }
}
