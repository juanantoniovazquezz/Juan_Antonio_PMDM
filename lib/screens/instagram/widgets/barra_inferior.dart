import 'package:flutter/material.dart';

import 'imagen_red.dart';

class BarraInferior extends StatelessWidget {
  const BarraInferior({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFEEEEEE))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home_outlined, size: 28),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 28),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_collection_outlined, size: 27),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined, size: 27),
          ),
          ClipOval(
            child: ImagenRed(
              url: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e',
              ancho: 29,
              alto: 29,
            ),
          ),
        ],
      ),
    );
  }
}
