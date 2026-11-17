import 'package:flutter/material.dart';

class PestanasPerfil extends StatefulWidget {
  const PestanasPerfil({super.key});

  @override
  State<PestanasPerfil> createState() => _PestanasPerfilState();
}

class _PestanasPerfilState extends State<PestanasPerfil> {
  int seleccionada = 0;

  final List<IconData> iconos = [
    Icons.grid_on,
    Icons.video_library_outlined,
    Icons.person_pin_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(iconos.length, (index) {
        return Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                seleccionada = index;
              });
            },
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: seleccionada == index
                        ? Colors.black
                        : Colors.transparent,
                    width: 2,
                  ),
                ),
              ),
              child: Icon(
                iconos[index],
                color: seleccionada == index ? Colors.black : Colors.grey,
                size: 25,
              ),
            ),
          ),
        );
      }),
    );
  }
}
