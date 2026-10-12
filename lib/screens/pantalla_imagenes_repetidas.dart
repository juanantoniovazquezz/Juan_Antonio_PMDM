import 'package:flutter/material.dart';

import 'menu_lateral.dart';

class PantallaImagenesRepetidas extends StatelessWidget {
  const PantallaImagenesRepetidas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('7. Imágenes repetidas')),
      drawer: const MenuLateral(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Primera imagen: cargada desde assets
            _crearImagen(
              Image.asset(
                'assets/foto1.webp',
                width: 220,
                height: 150,
                fit: BoxFit.cover,
              ),
              'Imagen local: assets/foto1.webp',
            ),

            const SizedBox(height: 20),

            // Segunda imagen: cargada desde Internet
            _crearImagen(
              Image(
                image: const NetworkImage(
                  'https://picsum.photos/id/237/400/250',
                ),
                width: 220,
                height: 150,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 220,
                    height: 150,
                    color: Colors.grey.shade300,
                    alignment: Alignment.center,
                    child: const Text(
                      'No se pudo cargar la imagen',
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
              'Imagen de Internet: NetworkImage',
            ),

            const SizedBox(height: 20),

            // Tercera imagen: repetimos la imagen local
            _crearImagen(
              Image.asset(
                'assets/foto1.webp',
                width: 220,
                height: 150,
                fit: BoxFit.cover,
              ),
              'Imagen local repetida',
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen(Widget imagen, String texto) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            imagen,
            const SizedBox(height: 8),
            Text(
              texto,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
