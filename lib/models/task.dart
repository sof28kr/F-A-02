import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show immutable;

const String tablaParti = 'participantes';

class TablaFields {
  final List<String> values = [
    dni,
    ruc,
    nombre,
    telefono,
    direccion,
    email,
    firma,
    fechaRegistro,
    nro,
  ];

  // nombres de la scolumans para la tabla participantes

  static const dni = 'dni';
  static const ruc = 'ruc';
  static const nombre = 'nombre';
  static const telefono = 'telefono';
  static const direccion = 'direccion';
  static const email = 'email';
  static const firma = 'firma';
  static const fechaRegistro = 'fechaRegistro';
  static const nro = 'nro';
}

@immutable
class TablaParticipantes {
  final String dni;
  final String ruc;
  final String nombre;
  final String telefono;
  final String direccion;
  final String email;
  final String firma;
  final DateTime fechaRegistro;
  final int? nro;

  const TablaParticipantes({
    required this.dni,
    required this.ruc,
    required this.nombre,
    required this.telefono,
    required this.direccion,
    required this.email,
    required this.firma,
    required this.fechaRegistro,
    this.nro,
  });

  TablaParticipantes copy({
    String? dni,
    String? ruc,
    String? nombre,
    String? telefono,
    String? direccion,
    String? email,
    String? firma,
    DateTime? fechaRegistro,
    int? nro,
  }) =>
      TablaParticipantes(
        dni: dni ?? this.dni,
        ruc: ruc ?? this.ruc,
        nombre: nombre ?? this.nombre,
        telefono: telefono ?? this.telefono,
        direccion: direccion ?? this.direccion,
        email: email ?? this.email,
        firma: firma ?? this.firma,
        fechaRegistro: fechaRegistro ?? this.fechaRegistro,
        nro: nro ?? this.nro,
      );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      TablaFields.dni: dni,
      TablaFields.ruc: ruc,
      TablaFields.nombre: nombre,
      TablaFields.telefono: telefono,
      TablaFields.direccion: direccion,
      TablaFields.email: email,
      TablaFields.firma: firma,
      TablaFields.fechaRegistro: fechaRegistro.toIso8601String(),
      TablaFields.nro: nro,
    };
  }

  factory TablaParticipantes.fromMap(Map<String, dynamic> map) {
    return TablaParticipantes(
      dni: map[TablaFields.dni] as String,
      ruc: map[TablaFields.ruc] as String,
      nombre: map[TablaFields.nombre] as String,
      telefono: map[TablaFields.telefono] as String,
      direccion: map[TablaFields.direccion] as String,
      email: map[TablaFields.email] as String,
      firma: map[TablaFields.firma] as String,
      fechaRegistro: DateTime.parse(map[TablaFields.fechaRegistro] as String),
      nro: map[TablaFields.nro] != null ? map[TablaFields.nro] as int : null,
    );
  }
}
