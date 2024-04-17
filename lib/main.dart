import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:registro_asistencia/src/paginas/AsistenciaGrabada.dart';
import 'package:registro_asistencia/src/paginas/src.dart';

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
          builder: (context, state) => AsistenciaRegistrada(),
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
        GoRoute(
          path: '/AgregarParticipantes',
          builder: (context, state) => AgregarParticipantes(),
        ),
      ]),
    );
  }
}
