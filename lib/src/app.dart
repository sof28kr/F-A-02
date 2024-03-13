import 'package:flutter/material.dart';
import 'package:registro_asistencia/src/pages/inicio_page.dart';

class MiMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: InicioPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
