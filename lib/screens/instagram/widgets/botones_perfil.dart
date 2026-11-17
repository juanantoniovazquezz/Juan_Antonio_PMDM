import 'package:flutter/material.dart';

class BotonesPerfil extends StatelessWidget {
  const BotonesPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      child: Row(
        children: [
          Expanded(child: _boton('Following', Icons.keyboard_arrow_down)),
          const SizedBox(width: 6),
          Expanded(child: _boton('Message', null)),
          const SizedBox(width: 6),
          Expanded(child: _boton('Email', null)),
          const SizedBox(width: 6),
          Container(
            height: 38,
            width: 42,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Icon(Icons.keyboard_arrow_down),
          ),
        ],
      ),
    );
  }

  Widget _boton(String texto, IconData? icono) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            texto,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          if (icono != null) Icon(icono, size: 18),
        ],
      ),
    );
  }
}
