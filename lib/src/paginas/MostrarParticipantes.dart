import 'package:flutter/material.dart';
import 'package:registro_asistencia/database/Participantes_database.dart';
import 'package:registro_asistencia/models/ParticipantesModelo.dart';

import 'package:registro_asistencia/src/paginas/src.dart';
import 'package:registro_asistencia/widgets/Participantes_list_title.dart';

class MostrarParticipantes extends StatefulWidget {
  const MostrarParticipantes({super.key});

  @override
  State<MostrarParticipantes> createState() => _MostrarParticipantesState();
}

class _MostrarParticipantesState extends State<MostrarParticipantes> {
  bool EstaCargando = false;
  List<TablaParticipantes> tablaParticipantes = [];

  Future<void> getAllParticipantes() async {
    setState(() => EstaCargando = true);

    tablaParticipantes = await DBParticipantes.instance.ReadAllParticipantes();

    setState(() => EstaCargando = false);
  }

  @override
  void initState() {
    super.initState();
    getAllParticipantes();
  }

  @override
  void dispose() {
    DBParticipantes.instance.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relacion de Participantes'),
      ),
      body: EstaCargando
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _buildListaParticipantes(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => AgregarParticipantes()));
          },
          child: const Icon(Icons.add)),
    );
  }

  Widget _buildListaParticipantes() {
    return ListView.builder(
      itemCount: tablaParticipantes.length,
      itemBuilder: (context, index) {
        final TablaParticipantes = tablaParticipantes[index];
        return ParticipantesListTitle(
          tablaParticipantes: TablaParticipantes,
        );
      },
    );
  }
}


//https://www.youtube.com/watch?v=tK66XTrYE9k 28