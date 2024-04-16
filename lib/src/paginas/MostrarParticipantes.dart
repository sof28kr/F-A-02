import 'package:flutter/material.dart';
import 'package:registro_asistencia/src/paginas/src.dart';

class MostrarParticipantes extends StatefulWidget {
  const MostrarParticipantes({super.key});

  @override
  State<MostrarParticipantes> createState() => _MostrarParticipantesState();
}

class _MostrarParticipantesState extends State<MostrarParticipantes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relacion de Participantes'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => FormularioParticipantes()));
          },
          child: const Icon(Icons.add)),
    );
  }
}
