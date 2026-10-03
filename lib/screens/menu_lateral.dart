import 'package:flutter/material.dart';

import 'pantalla_datos.dart';
import 'pantalla_perfil.dart';
import 'pantalla_miniaturas.dart';
import 'pantalla_iconos.dart';
import 'pantalla_columnas.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Menú de Opciones"),
            accountEmail: Text("Actividad Resumen 1"),
            decoration: BoxDecoration(color: Colors.indigo),
          ),
          ListTile(
            leading: const Icon(Icons.text_fields),
            title: const Text("Mis Datos"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const PantallaDatos()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Perfil y Representación"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PantallaPerfil()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.grid_view),
            title: const Text("3 Miniaturas"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PantallaMiniaturas(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("5 Iconos en Filas"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PantallaIconos()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_column),
            title: const Text("5 Imágenes en Columnas"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PantallaColumnas(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
