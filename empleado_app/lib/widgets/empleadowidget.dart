


import 'package:flutter/material.dart';
import 'package:usuario_app/model/empleado.dart';

class EmpleadoWidget extends StatelessWidget{

   final Empleado empleado;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const EmpleadoWidget(
      {Key? key,
      required this.empleado,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(empleado.id);
      },
      onLongPress: () {
        onLongPress(empleado.id);
      },
      onTap: () {
        onTap(empleado);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                decoration: BoxDecoration(
                    color: empleado.revisado ? Colors.transparent : Colors.amber,
                    shape: BoxShape.circle),
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  
                  
                  Text("Nombre: ${empleado.nombre}"),
                  Text("Edad: ${empleado.edad.toString()}"),
                  Text("Id: ${empleado.id.toString()}")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

