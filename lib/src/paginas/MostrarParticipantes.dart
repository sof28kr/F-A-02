import 'package:flutter/material.dart';

class Mostrar extends StatefulWidget {
  const Mostrar({super.key});

  @override
  State<Mostrar> createState() => _MostrarState();
}

class _MostrarState extends State<Mostrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relacion de Participantes'),
      ),
      body: Column(
        children: [
          ElevatedButton(
          onPressed: () {}, child: Text('Registrar nuevo Participante')),
          ElevatedButton(onPressed: () {}, child: Text('Mostrar '))
          ],
      ) 
      
      
                                                                                                      
    );
  }
}
