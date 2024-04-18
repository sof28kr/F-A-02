import 'package:flutter/material.dart';
import 'package:registro_asistencia/extensiones/extensions.dart';
import 'package:go_router/go_router.dart';
import 'package:registro_asistencia/src/paginas/src.dart';
import 'package:registro_asistencia/database/Participantes_database.dart';

final _formKey = GlobalKey<FormState>();

class AgregarParticipantes extends StatefulWidget {
  const AgregarParticipantes({super.key});

  @override
  State<AgregarParticipantes> createState() => _AgregarParticipantesState();
}

class _AgregarParticipantesState extends State<AgregarParticipantes> {
  late final TextEditingController _DNIController;
  late final TextEditingController _NombreController;
  late final TextEditingController _RucController;
  late final TextEditingController _TelefonoController;
  late final TextEditingController _DireccionController;
  late final TextEditingController _EmailController;
  late final String _Firmacontroller;
  DateTime _startDate = DateTime.now();

  //limpieza del formulario

  @override
  void initState() {
    _DNIController = TextEditingController();
    _NombreController = TextEditingController();
    _RucController = TextEditingController();
    _TelefonoController = TextEditingController();
    _DireccionController = TextEditingController();
    _EmailController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _DNIController.dispose();
    _NombreController.dispose();
    super.dispose();
  }

  Future<void> agregar_participantes() async {
    final TablaParticipantess = TablaParticipantes(
        dni: int.parse(_DNIController.text),
        ruc: _RucController.text,
        nombre: _NombreController.text,
        telefono: _TelefonoController.text,
        direccion: _DireccionController.text,
        email: _EmailController.text,
        firma: _Firmacontroller,
        fechaRegistro: _startDate);
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                ),
                TextFormField(
                  controller: _NombreController,
                  decoration: const InputDecoration(
                    hintText: 'Ingrese sus nombres y apellidos',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese sus nombres y apellidos';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _RucController,
                  decoration: const InputDecoration(
                    hintText: 'Ingrese su Ruc',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese su Ruc';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _TelefonoController,
                  decoration: const InputDecoration(
                    hintText: 'Ingrese su telefono',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese su telefono';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _EmailController,
                  decoration: const InputDecoration(
                    hintText: 'Ingrese su email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese su email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _DireccionController,
                  decoration: const InputDecoration(
                    hintText: 'Ingrese su direccion',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese su direccion';
                    }
                    return null;
                  },
                ),

                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ingrese su Firma'),
                    FilledButton(
                        onPressed: () => context.push('/IngresoFirma'),
                        child: Text('Registrar Firma')),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Fecha del Registro'),
                      TextButton(
                          onPressed: agregar_participantes,
                          child: Text(
                            _startDate.format(),
                          )),
                    ]),
                FilledButton(
                    onPressed: () {},
                    child: const Text('Registrar Participantes'))
              ],
            ),
          ),
        ));
  }
}
