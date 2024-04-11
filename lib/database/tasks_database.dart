import 'package:flutter/foundation.dart' show immutable;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '/models/task.dart';

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
      CREATE TABLE IF NOT EXISTS $tablaParticipantes (
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
      TablaParticipantes tablaParticipantes) async {
    final db = await instance.database;
    final nro = await db.insert(
      tablaParticipantes,
      TablaParticipantes.toMap(),
    );
  }

   Future<TablaParticipantes> createTablaParticipantes(
      TablaParticipantes tablaParticipantes) async {
    final db = await instance.database;
    final nro = await db.insert(
      tablaParticipantes,
      TablaParticipantes.toMap(),
    );
  }

}

const String tablaParticipantes = 'tablaParticpantes';
