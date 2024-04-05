import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:registro_asistencia/src/pages/firma/pages/homepage_signature.dart';
import 'package:registro_asistencia/src/pages/inicio_page.dart';
import 'package:registro_asistencia/src/pages/prueba/prueba.dart';

import 'package:registro_asistencia/src/app.dart';
import 'package:registro_asistencia/src/pages/stateful/formulario_page.dart';
import 'package:registro_asistencia/src/paginas/blue_page.dart';
import 'package:registro_asistencia/src/paginas/green_page.dart';
import 'package:registro_asistencia/src/paginas/red_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(initialLocation: '/participantes', routes: [
        GoRoute(
          path: '/blue',
          builder: (context, state) => BluePage(),
        ),
        GoRoute(
          path: '/red',
          builder: (context, state) => RedPage(),
        ),
        GoRoute(
          path: '/green',
          builder: (context, state) => GreenPage(),
        ),
        GoRoute(
          path: '/participantes',
          builder: (context, state) => FormularioPage(),
        ),
      ]),
    );
  }
}
