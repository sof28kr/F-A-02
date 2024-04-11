import 'package:flutter/foundation.dart' show immutable;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '/models/task.dart';

import 'package:registro_asistencia/models/task.dart';

@immutable
class DBParticipantes {
  static const String _databaseName = 'TablaParticipantes.db';
  static const int _databaseVersion = 1;

  // Create a singleton
  const DBParticipantes._privateConstructor();
  static const DBParticipantes instance = DBParticipantes._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String dbPath = await getDatabasesPath();
    final String path = join(dbPath, _databaseName);
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _createDB,
    );
  }

  // Metodo que crea la base de datos
  Future _createDB(
    Database db,
    int version,
  ) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const boolType = 'BOOLEAN NOT NULL';
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $tablaParti(
        ${TablaFields.nro} $idType,
        ${TablaFields.dni} $textType,
        ${TablaFields.ruc} $textType,
        ${TablaFields.nombre} $textType,
        ${TablaFields.telefono} $textType,
        ${TablaFields.direccion} $textType,
        ${TablaFields.email} $textType,
        ${TablaFields.firma} $textType,
      )
    
    ''');
  }

  // metodos para la implementacion del crud

  //CREATE

  Future<TablaParticipantes> createTablaParticipantes(
      TablaParticipantes participantes) async {
    final db = await instance.database;
    final nro = await db.insert(tablaParti, participantes.toMap());

    return participantes.copy(nro: nro);
  }

  //READ

  Future<TablaParticipantes> readTablaParticipantes(int nro) async {
    final db = await instance.database;

    final ParticipantesData = await db.query(
      tablaParti,
      columns: TablaFields().values,
      where: '${TablaFields.nro} = ?',
      whereArgs: [nro],
    );

    if (ParticipantesData.isNotEmpty) {
      return TablaParticipantes.fromMap(ParticipantesData.first);
    } else {
      throw Exception(
          'No se encontro un participante en ese numero de registro');
    }
  }

  // mostrar todos los registro

  Future<List<TablaParticipantes>> MostrarTodosLosParticipantes() async {
    final db = await instance.database;

    final result =
        await db.query(tablaParti, orderBy: '${TablaFields.fechaRegistro} ASC');

    return result
        .map((ParticipantesData) =>
            TablaParticipantes.fromMap(ParticipantesData))
        .toList();
  }

  // UPDATE

  Future<int> updateTablaParticipantes(
      TablaParticipantes tablaParticipantes) async {
    final db = await instance.database;
    return await db.update(
      tablaParti,
      tablaParticipantes.toMap(),
      where: '${TablaFields.nro} = ? ',
      whereArgs: [tablaParticipantes.nro],
    );
  }

  // DELETE

  Future<int> deleteTablaParticipantes(int nro) async {
    final db = await instance.database;

    return await db.delete(
      tablaParti,
      where: '${TablaFields.nro} = ?',
      whereArgs: [nro],
    );
  }

  // cierra la tabla

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
