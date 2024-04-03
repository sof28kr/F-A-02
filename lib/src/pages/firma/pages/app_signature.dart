import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registro_asistencia/src/pages/firma/pages/homepage_signature.dart';

void main() {
  runApp(const Signature());
}

class Signature extends StatelessWidget {
  const Signature({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'App de Firma',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage_Signature());
  }
}
