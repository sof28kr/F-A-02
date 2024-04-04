import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class GreenPage extends StatelessWidget {
  GreenPage({super.key});
  final keySignaturePad = GlobalKey<SfSignaturePadState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("Pagina Verde"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SfSignaturePad(
                key: keySignaturePad,
                backgroundColor: Colors.yellow.withOpacity(0.2),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(onPressed: onSubmit, child: Text('guardar')),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('borrar'))
                ],
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () => context.pop(),
                  child: Text("Volver")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () => context.push('/red'),
                  child: Text("Ir a la pagina roja")),
            ],
          ),
        ));
    Future onSubmit() async {
      final image = await keySignaturePad.currentState?.toImage();
      final imageSignature = await image!.toByteData();
    }

    //https://www.youtube.com/watch?v=fg2aLXNG0Bc
  }
}
