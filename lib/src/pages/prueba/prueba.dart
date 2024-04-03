import 'package:flutter/material.dart';

void main() {
  runApp(const prueba());
}

class prueba extends StatelessWidget {
  const prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sample code'),
      ),
    );
  }
}
