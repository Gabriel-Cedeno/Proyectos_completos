import 'package:evaluacion_practica/model/Usuario.dart';

class Backend {
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _Usuarios = [
    Usuario(
      id: 631,
      nombre: 'Javier',
      apellido: 'Seraphine',

      cedula:
          '1231151515',
    ),
    Usuario(
      id: 522,
      nombre: 'Javier',
      apellido: 'Seraphine',

      cedula:
          '1231151515',
    ),
    Usuario(
      id: 963,
      nombre: 'Javier',
      apellido: 'Seraphine',

      cedula:
          '1231151515',
    ),
    Usuario(
      id: 164,
      read: true,
      nombre: 'Javier',
      apellido: 'Perez',

      cedula:
          '1231151515',
    ),
    Usuario(
      id: 835,
      nombre: 'Javier',
      apellido: 'Perez',

      cedula:
          '1231151515',
    ),
    Usuario(
      id: 966,
      nombre: 'Pedro',
      apellido: 'Perez',

      cedula:
          '1231151515',
    ),
    Usuario(
      id: 237,
      nombre: 'Juan',
      apellido: 'Olguin',

      cedula:
          '1231151515',
    ),
    Usuario(
      id: 308,
      nombre: 'pedroo',
      apellido: 'Olguin',

      cedula:
          '1231151515',
    ),
    Usuario(
      id: 759,
      nombre: 'Josee',
      apellido: 'Olguin',

      cedula:
          '1231151515',
    ),
    Usuario(
      id: 810,
      nombre: 'Arinto',
      apellido: 'Olguin',

      cedula:
          '1231151515',
    ),
  ];

  List<Usuario> get_Usuario() {
    return _Usuarios;
  }

  void markUsuarioAsRead(int id) {
    final index = _Usuarios.indexWhere((usuario) => usuario.id == id);
    _Usuarios[index].read = true;
  }

  void deleteUsuario(int id) {
    _Usuarios.removeWhere((usuario) => usuario.id == id);
  }
}
