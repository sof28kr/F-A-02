import 'package:go_router/go_router.dart';
import 'package:registro_asistencia/src/pages/firma/pages/app_signature.dart';

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

// GoRouter configuration
final appRouter = GoRouter(
  // pone como primera ruta la homescreen
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: MiMaterialApp.name,
      builder: (context, state) => MiMaterialApp(),
    ),
    GoRoute(
      path: '/firma',
      name: Signature1.name,
      builder: (context, state) => const Signature1(),
    ),
  ],
);
