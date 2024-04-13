import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:registro_asistencia/src/paginas/FormularioParticipantes.dart';
import 'package:registro_asistencia/src/app.dart';
import 'package:registro_asistencia/src/paginas/MostrarParticipantes.dart';
import 'package:registro_asistencia/src/paginas/blue_page.dart';
import 'package:registro_asistencia/src/paginas/IngresoFirma.dart';
import 'package:registro_asistencia/src/paginas/implementando.dart';
import 'package:registro_asistencia/src/paginas/red_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(initialLocation: '/inicio', routes: [
        GoRoute(
          path: '/FormularioParticipantes',
          builder: (context, state) => FormularioParticipantes(),
        ),
        GoRoute(
          path: '/AsistenciaRegistrada',
          builder: (context, state) => RedPage(),
        ),
        GoRoute(
          path: '/IngresoFirma',
          builder: (context, state) => IngresoFirma(),
        ),
        GoRoute(
          path: '/MostrarParticipantes',
          builder: (context, state) => MostrarParticipantes(),
        ),
        GoRoute(
          path: '/inicio',
          builder: (context, state) => Implementando(), //FormularioPage()
        ),
      ]),
    );
  }
}
