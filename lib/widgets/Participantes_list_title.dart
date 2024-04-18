import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:registro_asistencia/database/Participantes_database.dart';
import 'package:registro_asistencia/extensiones/extensions.dart';
import 'package:registro_asistencia/models/ParticipantesModelo.dart';

import 'package:registro_asistencia/src/paginas/src.dart';

class ParticipantesListTitle extends StatefulWidget {
  const ParticipantesListTitle({super.key, required this.tablaParticipantes});

  final TablaParticipantes tablaParticipantes;

  @override
  State<ParticipantesListTitle> createState() => _ParticipantesListTitleState();
}

class _ParticipantesListTitleState extends State<ParticipantesListTitle> {
  bool EstaCargando = false;

  //@override
  // void initState(){
  // EstaCargando = widget.tablaParticipantes.EstaCargando;
  //}

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(8.0),
        child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
            ),
            child: CupertinoListTile(
              leading: Transform.scale(scale: 1.5),
              title: Text(widget.tablaParticipantes.nombre,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text(widget.tablaParticipantes.telefono),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.tablaParticipantes.fechaRegistro.format()),
              ),
            )));
  }
}
