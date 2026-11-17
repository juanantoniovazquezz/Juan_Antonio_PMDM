import 'package:flutter/material.dart';

import '../menu_lateral.dart';

import 'widgets/cabecera_perfil.dart';
import 'widgets/biografia_perfil.dart';
import 'widgets/botones_perfil.dart';
import 'widgets/historias_destacadas.dart';
import 'widgets/pestanas_perfil.dart';
import 'widgets/galeria_publicaciones.dart';
import 'widgets/barra_inferior.dart';

class PantallaInstagram extends StatelessWidget {
  const PantallaInstagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuLateral(),

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'wonguy974',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            SizedBox(width: 5),
            Icon(Icons.verified, color: Colors.blue, size: 18),
          ],
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: const [
          Icon(Icons.notifications_none, size: 27),
          SizedBox(width: 15),
          Icon(Icons.more_horiz, size: 27),
          SizedBox(width: 12),
        ],
      ),

      backgroundColor: Colors.white,

      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          CabeceraPerfil(),
          BiografiaPerfil(),
          BotonesPerfil(),
          HistoriasDestacadas(),
          PestanasPerfil(),
          GaleriaPublicaciones(),
        ],
      ),

      bottomNavigationBar: const BarraInferior(),
    );
  }
}
