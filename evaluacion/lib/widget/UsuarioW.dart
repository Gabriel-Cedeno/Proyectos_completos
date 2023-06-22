import 'package:flutter/material.dart';

import '../model/Usuario.dart';

class usuarioW extends StatelessWidget {
  final Usuario usuario;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const usuarioW(
      {Key? key,
      required this.usuario,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(usuario.id);
      },
      onLongPress: () {
        onLongPress(usuario.id);
      },
      onTap: () {
        onTap(usuario);
      },
      child: Container(
        height: 50.0,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  height: 10,
                  decoration: BoxDecoration(
                      color: usuario.read
                          ? Colors.transparent
                          : Color.fromARGB(255, 228, 4, 4),
                      shape: BoxShape.circle),
                )),
            Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(usuario.nombre),
                    Text(usuario.apellido)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
