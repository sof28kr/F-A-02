import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show immutable;

const String tablaParticipantes = 'tablaParticpantes';

class TablaFields {
  static final List<String> values = [
    nro,
    dni,
    ruc,
    nombre,
    telefono,
    direccion,
    email,
    firma,
    fechaRegistro,
  ];

  // nombres de la scolumans para la tabla participantes

  static const nro = 'nro';
  static const dni = 'dni';
  static const ruc = 'ruc';
  static const nombre = 'nombre';
  static const telefono = 'telefono';
  static const direccion = 'direccion';
  static const email = 'email';
  static const firma = 'firma';
  static const fechaRegistro = 'fechaRegistro';
}

@immutable
class TablaParticipantes {
  final int? nro;
  final String dni;
  final String ruc;
  final String nombre;
  final String telefono;
  final String direccion;
  final String email;
  final String firma;
  final DateTime fechaRegistro;

  const TablaParticipantes(
      {this.nro,
      required this.dni,
      required this.ruc,
      required this.nombre,
      required this.telefono,
      required this.direccion,
      required this.email,
      required this.firma,
      required this.fechaRegistro});

  TablaParticipantes copy(
          {int? nro,
          String? dni,
          String? ruc,
          String? nombre,
          String? telefono,
          String? direccion,
          String? email,
          String? firma,
          DateTime? fechaRegistro}) =>
      TablaParticipantes(
          nro: nro ?? this.nro,
          dni: dni ?? this.dni,
          ruc: ruc ?? this.ruc,
          nombre: nombre ?? this.nombre,
          telefono: telefono ?? this.telefono,
          direccion: direccion ?? this.direccion,
          email: email ?? this.email,
          firma: firma ?? this.firma,
          fechaRegistro: fechaRegistro ?? this.fechaRegistro);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      TablaFields.nro: nro,
      TablaFields.dni: dni,
      TablaFields.ruc: ruc,
      TablaFields.nombre: nombre,
      TablaFields.telefono: telefono,
      TablaFields.direccion: direccion,
      TablaFields.email: email,
      TablaFields.firma: firma,
      TablaFields.fechaRegistro: fechaRegistro
    };
  }

  factory TablaParticipantes.fromMap(Map<String, dynamic> map) {
    return TablaParticipantes(
        nro: map[TablaFields.nro] != null ? map[TablaFields.nro] as int : null,
        dni: map[TablaFields.dni] as String,
        ruc: map[TablaFields.ruc] as String,
        nombre: map[TablaFields.nombre] as String,
        telefono: map[TablaFields.telefono] as String,
        direccion: map[TablaFields.direccion] as String,
        email: map[TablaFields.email] as String,
        firma: map[TablaFields.firma] as String,
        fechaRegistro:
            DateTime.parse(map[TablaFields.fechaRegistro] as String));
  }
}
