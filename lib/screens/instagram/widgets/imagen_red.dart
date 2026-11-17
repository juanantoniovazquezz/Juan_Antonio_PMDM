import 'package:flutter/material.dart';

class ImagenRed extends StatelessWidget {
  final String url;
  final BoxFit ajuste;
  final double? ancho;
  final double? alto;

  const ImagenRed({
    super.key,
    required this.url,
    this.ajuste = BoxFit.cover,
    this.ancho,
    this.alto,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: ancho,
      height: alto,
      fit: ajuste,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          width: ancho,
          height: alto,
          color: Colors.grey.shade300,
          child: const Icon(
            Icons.image_not_supported,
            color: Colors.grey,
            size: 35,
          ),
        );
      },
    );
  }
}
