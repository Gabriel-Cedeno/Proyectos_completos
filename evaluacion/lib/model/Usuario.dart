class Usuario {
  final int id;
  final String cedula;
  final String nombre;
  final String apellido;
  bool read;

  Usuario({
    required this.id,
    required this.cedula,
    required this.nombre,
    required this.apellido,
    this.read = false,
  });
}
