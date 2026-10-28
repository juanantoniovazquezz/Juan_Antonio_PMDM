import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_lateral.dart';

class PantallaDatos extends StatelessWidget {
  const PantallaDatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mis Datos")),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Juan Antonio Vázquez",
              style: GoogleFonts.fuggles(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Repositorio GitHub:\nhttps://github.com/juanantoniovazquezz/Juan_Antonio_PMDM",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
