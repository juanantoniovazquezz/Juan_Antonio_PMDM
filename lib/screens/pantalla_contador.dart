import 'package:flutter/material.dart';

import 'menu_lateral.dart';

class PantallaContador extends StatefulWidget {
  const PantallaContador({super.key});

  @override
  State<PantallaContador> createState() => _PantallaContadorState();
}

class _PantallaContadorState extends State<PantallaContador> {
  int contador = 0;

  // Método para incrementar el contador
  void incrementar() {
    setState(() {
      contador++;
    });
  }

  // Método para decrementar el contador
  void decrementar() {
    setState(() {
      contador--;
    });
  }

  // Método para poner el contador a cero
  void reiniciar() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de clics'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      drawer: const MenuLateral(),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número de clics:', style: TextStyle(fontSize: 22)),

            const SizedBox(height: 15),

            Text(
              '$contador',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: incrementar,
              child: const Text('Incrementar'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: decrementar,
              child: const Text('Decrementar'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: reiniciar,
              child: const Text('Poner a cero'),
            ),
          ],
        ),
      ),
    );
  }
}
