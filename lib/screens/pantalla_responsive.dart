import 'package:flutter/material.dart';

import 'menu_lateral.dart';

class PantallaResponsive extends StatelessWidget {
  const PantallaResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos el tamaño de la pantalla
    final size = MediaQuery.of(context).size;
    final width = size.width;

    // Adaptamos el número de columnas al dispositivo
    int columnas;

    if (width < 600) {
      columnas = 2;
    } else if (width < 1000) {
      columnas = 3;
    } else {
      columnas = 4;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('8. Diseño responsive')),
      drawer: const MenuLateral(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              'Descubre diferentes lugares',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: width < 600 ? 22 : 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Una galería que se adapta al tamaño de tu pantalla.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Cuadrícula adaptable
            GridView.count(
              crossAxisCount: columnas,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: width < 600 ? 0.72 : 0.85,
              children: const [
                TarjetaLugar(
                  imagen: 'assets/foto1.webp',
                  titulo: 'Aventura',
                  descripcion: 'Explora nuevos caminos.',
                  color: Colors.blue,
                ),
                TarjetaLugar(
                  imagen: 'assets/foto2.webp',
                  titulo: 'Naturaleza',
                  descripcion: 'Disfruta del aire libre.',
                  color: Colors.green,
                ),
                TarjetaLugar(
                  imagen: 'assets/foto3.webp',
                  titulo: 'Descanso',
                  descripcion: 'Encuentra tu tranquilidad.',
                  color: Colors.orange,
                ),
                TarjetaLugar(
                  imagen: 'assets/foto4.webp',
                  titulo: 'Paisajes',
                  descripcion: 'Descubre lugares únicos.',
                  color: Colors.purple,
                ),
                TarjetaLugar(
                  imagen: 'assets/foto5.webp',
                  titulo: 'Momentos',
                  descripcion: 'Guarda tus recuerdos.',
                  color: Colors.red,
                ),
                TarjetaLugar(
                  imagen: 'assets/foto1.webp',
                  titulo: 'Diversión',
                  descripcion: 'Cada día es diferente.',
                  color: Colors.teal,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TarjetaLugar extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String descripcion;
  final Color color;

  const TarjetaLugar({
    super.key,
    required this.imagen,
    required this.titulo,
    required this.descripcion,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Image.asset(imagen, fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(
                  titulo,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  descripcion,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
