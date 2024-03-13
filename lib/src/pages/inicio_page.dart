import 'package:flutter/material.dart';
import 'package:registro_asistencia/src/pages/stateful/formulario_page.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de asistencia'),
        centerTitle: true,
      ),
      body: Center(
        child: FormularioPage(),
      ),
    );
  }
}
