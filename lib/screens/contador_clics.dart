import 'package:flutter/material.dart';

class ContadorClics extends StatefulWidget {
  const ContadorClics({super.key});

  @override
  State<ContadorClics> createState() => _ContadorClicsState();
}

class _ContadorClicsState extends State<ContadorClics> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void decrementar() {
    setState(() {
      contador--;
    });
  }

  void reiniciar() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contador de clics')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Has pulsado...', style: TextStyle(fontSize: 25)),
            Text('$contador', style: const TextStyle(fontSize: 40)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: incrementar, child: const Text('+')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: decrementar, child: const Text('-')),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: reiniciar,
                  child: const Text('Poner a cero'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
