import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// por el momento esta es la primera pagina que se abre al abrir la app

class Implementando extends StatefulWidget {
  const Implementando({super.key});

  @override
  State<Implementando> createState() => _ImplementandoState();
}

class _ImplementandoState extends State<Implementando> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Registro de Participantes'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () => context.push('/AgregarParticipantes'),
              child: Text('Registrar Participantes'))
        ],
      ),
    );
  }
}
