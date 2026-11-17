import 'package:flutter/material.dart';

import 'imagen_red.dart';

class CabeceraPerfil extends StatelessWidget {
  const CabeceraPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [Colors.orange, Colors.pink, Colors.purple],
              ),
            ),
            child: ClipOval(
              child: ImagenRed(
                url: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e',
                ancho: 105,
                alto: 105,
              ),
            ),
          ),

          const SizedBox(width: 15),

          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _Estadistica(numero: '1.709', texto: 'Posts'),
                _Estadistica(numero: '833K', texto: 'Followers'),
                _Estadistica(numero: '405', texto: 'Following'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Estadistica extends StatelessWidget {
  final String numero;
  final String texto;

  const _Estadistica({required this.numero, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numero,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(texto, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}
