import 'package:flutter/material.dart';
import 'package:registro_asistencia/config/router/app_router.dart';
import 'package:registro_asistencia/src/app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      // theme: AppTheme(selectedColor: 3).getTheme(),
    );
  }
}
