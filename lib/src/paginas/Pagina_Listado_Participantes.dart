import 'package:flutter/material.dart';

class ListadoParticipantes extends StatefulWidget {
  const ListadoParticipantes({super.key});

  @override
  State<ListadoParticipantes> createState() => _ListadoParticipantesState();
}

class _ListadoParticipantesState extends State<ListadoParticipantes> {
  @override
  Widget build(BuildContext context) {
    return Scafold(
      appBar: AppBar(
        title:  const Text('Lista Participantes');
        
      )
    );
  }
}