import 'package:flutter/material.dart';

import 'imagen_red.dart';

class HistoriasDestacadas extends StatelessWidget {
  const HistoriasDestacadas({super.key});

  static const List<Map<String, String>> historias = [
    {
      'nombre': 'PRINTS 🖼️',
      'imagen': 'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee',
    },
    {
      'nombre': 'Hotels 📸',
      'imagen': 'https://images.unsplash.com/photo-1566073771259-6a8506099945',
    },
    {
      'nombre': 'Snow 2021',
      'imagen': 'https://images.unsplash.com/photo-1517299321609-52687d1bc55a',
    },
    {
      'nombre': 'Portraits 📸',
      'imagen': 'https://images.unsplash.com/photo-1534528741775-53994a69daeb',
    },
    {
      'nombre': 'Local Gems',
      'imagen': 'https://images.unsplash.com/photo-1519501025264-65ba15a82390',
    },
    {
      'nombre': 'Nature 🌿',
      'imagen': 'https://images.unsplash.com/photo-1470770841072-f978cf4d019e',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: historias.length,
        itemBuilder: (context, index) {
          final historia = historias[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade400, width: 1.5),
                  ),
                  child: ClipOval(
                    child: ImagenRed(
                      url: historia['imagen']!,
                      ancho: 65,
                      alto: 65,
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                Text(historia['nombre']!, style: const TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }
}
