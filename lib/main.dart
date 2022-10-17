import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("titulo"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                "titulo1",
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "titulo2",
              textAlign: TextAlign.center,
            ),
            Container(
              child: RaisedButton(
                  child: Text("hola"),
                  child:
                  onPressed: () {
                    var perro = DateTime.now()
                    print(perro);
                  }),
            )
          ],
        ));
  }
}
