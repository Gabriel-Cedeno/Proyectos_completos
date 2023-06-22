import 'package:flutter/material.dart';

import '../model/Usuario.dart';

class UsuarioDetail extends StatelessWidget {
  final Usuario usuario;
  const UsuarioDetail({super.key, required Usuario this.usuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Usuario')),
      body: Container(
        padding: EdgeInsetsDirectional.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text(usuario.id.toString()),
            const SizedBox(
              height: 20,
            ),
            Text(usuario.cedula),
            Text(usuario.nombre.toString()),
            Divider(
              color: Color.fromARGB(255, 113, 221, 25),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(usuario.apellido)
          ],
        ),
      ),
    );
  }
}
