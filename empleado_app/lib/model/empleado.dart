

class Empleado {
  final int id;
  final String nombre;
  final int edad;
  bool revisado;

Empleado({
  required this.id,
  required this.nombre,
  required this.edad,
  this.revisado=false
});

}