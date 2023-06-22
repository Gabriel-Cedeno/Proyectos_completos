
import 'package:evaluacion_practica/screens/DetailScreensUsuario.dart';
import 'package:flutter/material.dart';

import '../model/Usuario.dart';
import '../model/backend.dart';
import '../widget/UsuarioW.dart';

class ScreenUsuario extends StatefulWidget {
  const ScreenUsuario({super.key});

  @override
  State<ScreenUsuario> createState() => _ScreenUsuarioState();
}

class _ScreenUsuarioState extends State<ScreenUsuario> {

  var Usuarios = Backend().get_Usuario();

  void markUsuarioAsRead( int id ){
    Backend().markUsuarioAsRead(id);
    setState(() {
      Usuarios = Backend().get_Usuario();
    });
  }

  void deleteUsuario( int id ){
    Backend().deleteUsuario(id);
    setState(() {
      Usuarios = Backend().get_Usuario()
;    });
  }
void showUsuarioDetails( Usuario usuario){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return UsuarioDetail(usuario: usuario);
  },));
  Backend().markUsuarioAsRead(usuario.id);
  setState(() {
    Usuarios= Backend().get_Usuario();
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Usuario'),),
      body: ListView.separated(
        itemCount: Usuarios.length,
        separatorBuilder: (BuildContext context, int index) =>const Divider(
          color: Colors.black,
          indent: 40.0,
          endIndent: 20.0,
        ) ,
        itemBuilder:( BuildContext context, int index) =>(
          usuarioW(

            usuario:  Usuarios[index],
            onLongPress: markUsuarioAsRead ,
            onTap: showUsuarioDetails,
            onSwipe: deleteUsuario ,
          )),
      ),
    );
    
  }
}