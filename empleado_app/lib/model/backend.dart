


import 'package:usuario_app/model/empleado.dart';

class Backend{
  static final Backend _backend = Backend._internal();

  factory Backend(){
    return _backend;
  }

  Backend._internal();

  final _empleados = [
    Empleado(
     id: 1,
     nombre: "Lionel Messi",
     edad: 35),

    Empleado(
     id: 2,
     nombre: "Cristiano Ronaldo",
     edad: 37),

    Empleado(
     id: 3,
     nombre: "Enner Valencia",
     edad: 38),

    Empleado(
     id: 4,
     nombre: "Moises Caicedo",
     edad:22),

  ];


  List <Empleado> getEmpleados(){
    return _empleados;
  }

  void markEmpleadoComoVisto(int id){
    var indice= _empleados.indexWhere((empleado) => empleado.id==id);
    _empleados[indice].revisado=true;
  }

  void deleteEmpleado(int id){
    _empleados.removeWhere((usuario) =>usuario.id==id );
  }

}