import 'package:flutter/material.dart';
import 'package:registro_asistencia/src/pages/firma/pages/app_signature.dart';
import 'package:registro_asistencia/src/pages/firma/pages/homepage_signature.dart';

class FormularioPage extends StatefulWidget {
  const FormularioPage({Key? key}) : super(key: key);

  @override
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  String _nombre = '';
  String _dni = '';
  String _telefono = '';
  String _direccion = '';
  String _email = '';
  String _password = '';
  String _RUC = '';

  final TextEditingController controllerInputNombre =
      TextEditingController(); // Controlador asociado a texto Email donde se escribe
  final TextEditingController controllerInputDni = TextEditingController();
  final TextEditingController controllerInputTelefono =
      TextEditingController(); // Controlador asociado a texto Email donde se escribe
  final TextEditingController controllerInputDireccion =
      TextEditingController();
  final TextEditingController controllerInputEmail =
      TextEditingController(); // Controlador asociado a texto Email donde se escribe
  final TextEditingController controllerInputPassword = TextEditingController();
  final TextEditingController controllerInputRuc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Eventohfghgfh 01'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          children: [
            Row(
              children: <Widget>[
                Expanded(child: _crearInputDni()),
                Expanded(
                    child: Padding(
                        padding: EdgeInsetsDirectional.all(15),
                        child: _BuscarDatos()))
              ],
            ),
            // TextField con múltiples opciones de decoración
            Divider(),
            _crearInputNombre(), // TextField con múltiples opciones de decoración
            Divider(),
            _crearInputTelefono(), // TextField con múltiples opciones de decoración
            Divider(),
            _crearInputDireccion(), // TextField con múltiples opciones de decoración
            Divider(),
            _crearEmail(),
            Divider(),
            _crearInputRuc(),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text('Firma del Participante',
                      textAlign: TextAlign.center),
                ),
                Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: _SubirFirma()),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            _crearBoton(),
            Divider(),

            _visualizarDatos(),
          ],
        ));
  }

  Widget _visualizarDatos() {
    return Column(
      children: [
        Text('Nombre del asistente: $_nombre'),
        Text('Dni del asistente: $_dni'),
        Text('Telefono del asistente: $_telefono'),
        Text('Direccion del asistente: $_direccion'),
        Text('Email del asistente: $_email'),
        Text('Ruc del asistente: $_RUC'),
        Text('Password: $_password')
      ],
    );
  }

  Widget _crearBoton() {
    final estiloBoton = FilledButton.styleFrom(
        textStyle: TextStyle(color: Colors.blue, fontSize: 20));
    return FilledButton(
        style: estiloBoton,
        onPressed: () {
          print('El nombre es:${controllerInputNombre.text}');
          print('El DNI es:${controllerInputDni.text}');
          print('El Telefono es:${controllerInputTelefono.text}');
          print('La direccion es:${controllerInputDireccion.text}');
          print('El correo es:${controllerInputEmail.text}');
          print('El ruc es:${controllerInputRuc.text}');
          setState(() {
            // Necesitamos redibujar para que el campo Text que visualiza el email lo muestre
            _nombre = controllerInputNombre.text;
            _dni = controllerInputDni.text;
            _telefono = controllerInputTelefono.text;
            _direccion = controllerInputDireccion.text;
            _email = controllerInputEmail.text;
            _RUC = controllerInputRuc.text;
          });
        },
        child: Text('Registrar Asistencia'));
  }

  Widget _SubirFirma() {
    final estiloBoton = FilledButton.styleFrom(
        textStyle: TextStyle(color: Colors.green, fontSize: 15));
    return FilledButton(
        style: estiloBoton,
        onPressed: () {
          Signature1();
        },
        child: Center(child: Text('Ingrese su firma')));
  }

  Widget _BuscarDatos() {
    final estiloBoton = FilledButton.styleFrom(
        textStyle: TextStyle(color: Colors.blue, fontSize: 15));
    return FilledButton(
        style: estiloBoton, onPressed: () {}, child: Text('Autocompletar'));
  }

  Widget _crearInputNombre() {
    return TextField(
      controller: controllerInputNombre,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          hintText: 'Nombres y Apellidos',
          labelText: 'Nombre Completo',
          suffixIcon: Icon(Icons.person),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }

  Widget _crearInputDni() {
    return TextField(
      controller: controllerInputDni,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Numero de Dni',
          labelText: 'DNI',
          suffixIcon: Icon(Icons.card_travel),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }

  Widget _crearInputTelefono() {
    return TextField(
      controller: controllerInputTelefono,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Numero fijo o  celular',
          labelText: 'Telefono',
          suffixIcon: Icon(Icons.call),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }

  Widget _crearInputDireccion() {
    return TextField(
      controller: controllerInputDireccion,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          hintText: 'Coloque la ubicacion de su residencia',
          labelText: 'Direccion',
          suffixIcon: Icon(Icons.maps_home_work),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }

  Widget _crearInputRuc() {
    return TextField(
      controller: controllerInputRuc,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Ingrese su RUC, de tenerlo',
          labelText: 'RUC',
          suffixIcon: Icon(Icons.card_travel),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }

  Widget _crearEmail() {
    return TextField(
      controller: controllerInputEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email del paciente',
          labelText: 'Email',
          suffixIcon: Icon(Icons.email),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }
}
