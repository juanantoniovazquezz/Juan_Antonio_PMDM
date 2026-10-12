import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'menu_lateral.dart';

class PantallaTextos extends StatelessWidget {
  const PantallaTextos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('6. Textos y fuentes')),
      drawer: const MenuLateral(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // FILA 1: Fuente Roboto
              Container(
                width: double.infinity,
                height: 150,
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'FILA 1:texto bastante largo que intenta '
                  'ocupar más espacio del disponible dentro de su '
                  'contenedor para mostrar cómo se comporta el texto.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 22),
                ),
              ),

              // FILA 2: Fuente de Google Fonts y AutoSizeText
              Container(
                width: double.infinity,
                height: 150,
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: AutoSizeText(
                  'FILA 2:utiliza una fuente de Google Fonts '
                  'y adapta automáticamente su tamaño al espacio '
                  'disponible en el contenedor.',
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  minFontSize: 10,
                  maxFontSize: 24,
                  style: GoogleFonts.lobster(
                    fontSize: 24,
                    color: Colors.black87,
                  ),
                ),
              ),

              // FILA 3: Fuente Courier
              Container(
                width: double.infinity,
                height: 150,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  border: Border.all(color: Colors.orange),
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'FILA 3:utiliza otra fuente distinta. '
                  'El texto es largo para observar cómo se distribuye '
                  'dentro de un espacio de altura limitada.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Courier', fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
