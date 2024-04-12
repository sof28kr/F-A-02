import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AsistenciaRegistrada extends StatefulWidget {
  const AsistenciaRegistrada({super.key});

  @override
  State<AsistenciaRegistrada> createState() => _AsistenciaRegistradaState();
}

class _AsistenciaRegistradaState extends State<AsistenciaRegistrada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Evento 01'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () => context.push('/FormularioParticipantes'),
                  child: Text('Registrar nuevo Participante')),
              ElevatedButton(
                  onPressed: () => context.push('/MostrarParticipantes'),
                  child: Text('Mostrar la lista de Participantes')),
              ElevatedButton(
                  onPressed: () => context.pop(),
                  child: Text('Editar Registro'))
            ],
          ),
        ));
  }
}
