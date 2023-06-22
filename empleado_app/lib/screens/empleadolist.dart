

import 'package:flutter/material.dart';
import 'package:usuario_app/model/empleado.dart';
import 'package:usuario_app/model/backend.dart';
import 'package:usuario_app/screens/empleadodetail.dart';
import 'package:usuario_app/widgets/empleadowidget.dart';

class EmpleadoList extends StatefulWidget{
  final String titulo;

  const EmpleadoList({Key?key, required this.titulo }):super(key: key);

    @override
   _EmpleadoListState createState()=> _EmpleadoListState();

}

class _EmpleadoListState extends State <EmpleadoList>{


var empleados = Backend().getEmpleados();

void markEmpleadoComoVisto(int id){
  Backend().markEmpleadoComoVisto(id);
  setState(() {
    empleados =Backend().getEmpleados();
});
}


void deleteEmpleado(int id){
  Backend().deleteEmpleado(id);
  setState(() {
    empleados = Backend().getEmpleados();
  });
}

void showDetail(Empleado empleado){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return EmpleadoDetail(empleado: empleado);
  }));
  
    Backend().markEmpleadoComoVisto(empleado.id);
    setState(() {
      empleados=Backend().getEmpleados();
    });
}


@override
Widget build (BuildContext context){

  return Scaffold(
    appBar: AppBar(title: Text(widget.titulo)),
    body: ListView.separated(itemBuilder: (BuildContext context, int index)=>EmpleadoWidget(
      empleado: empleados[index],
      onTap: showDetail,
      onSwipe: deleteEmpleado,
      onLongPress: markEmpleadoComoVisto),
    separatorBuilder: (BuildContext context, int index)=> const Divider(
      color: Colors.black,
      thickness: 4,
    ),
    itemCount: empleados.length)
  );
}

}