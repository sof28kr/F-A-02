import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class AgregarParticipantes extends StatefulWidget {
  const AgregarParticipantes({super.key});

  @override
  State<AgregarParticipantes> createState() => _AgregarParticipantesState();
}

class _AgregarParticipantesState extends State<AgregarParticipantes> {
  late final TextEditingController _DNIController;
  late final TextEditingController _NombreController;
  DateTime _startDate = DateTime.now();

  //limpieza del formulario

  @override
  void initState() {
    _DNIController = TextEditingController();
    _NombreController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _DNIController.dispose();
    _NombreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registro de Participantes'),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ))
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 12.0,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // aqui van los campos del formulario
                TextFormField(
                  controller: _DNIController,
                  decoration: const InputDecoration(
                    hintText: 'Ingrese su DNI',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese sus DNI';
                    }
                    return null;
                  },
                )
              ],
            ),
          ),
        ));
  }
}
