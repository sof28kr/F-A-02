import 'package:flutter/material.dart';

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
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Registrar nuevo Participante')),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Mostrar la lista de Participantes')),
              ElevatedButton(onPressed: () {}, child: Text('Editar Registro'))
            ],
          ),
        ));
  }
}
