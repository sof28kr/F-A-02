import 'package:flutter/material.dart';
import 'package:registro_asistencia/database/Participantes_database.dart';
import 'package:registro_asistencia/models/task.dart';
import 'package:registro_asistencia/src/paginas/src.dart';

class MostrarParticipantes extends StatefulWidget {
  const MostrarParticipantes({super.key});

  @override
  State<MostrarParticipantes> createState() => _MostrarParticipantesState();
}

class _MostrarParticipantesState extends State<MostrarParticipantes> {
  bool EstaCargando = false;
  List<TablaFields> TablaParticipantes = [];

  Future<void> getAllParticipantes() async {
    setState(() => EstaCargando = true);

    TablaParticipantes =
        await DBParticipantes.instance.MostrarTodosLosParticipantes();
  }

  @override
  void initState() {
    super.initState();
    MostrarParticipantes();
    //TODO
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
      itemCount: TablaParticipantes.length,
      itemBuilder: (context, index) {
        final TablaParticipantess = TablaParticipantes[index];
      },
    );
  }
}
