


import 'package:flutter/material.dart';
import 'package:usuario_app/model/empleado.dart';

class EmpleadoDetail extends StatelessWidget{
 final Empleado empleado;
const EmpleadoDetail({Key?key, required this.empleado}):super(key: key);

@override
Widget build (BuildContext context){

  return Scaffold(
    appBar:  AppBar(title: Text("Empleado")),
    body: Container(
      padding:const EdgeInsets.all(10),
      child: Column(children: [
       Text("Nombre: ${empleado.nombre}"),
       Text("Edad: ${empleado.edad.toString()}"),
       Text("Id: ${empleado.id}")
      ]),
    ),
  );
}

}