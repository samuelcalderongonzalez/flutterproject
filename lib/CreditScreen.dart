// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class CreditScreen extends StatelessWidget {
  static int recordFacil = 0;
  static int recordMedio = 0;
  static int recordDificil= 0;
  static int current = 0;
  const CreditScreen({Key? key}) : super(key: key);
  
  //Widget de la pantallad de créditos, con una estructura muy similar al de Inicio
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 57, 210, 236),
        //Barra superior
        appBar: AppBar(),
        //Drawer de la aplicación con una lista de dos botones.
        drawer: Drawer(
          child: ListView(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "FirstScreen");
                  },
                  child: const Text("Inicio")),
            ],
          ),
        ),
        //Cuerpo de la aplicación
        body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Número de movimientos: ${CreditScreen.current}",
                  style: TextStyle(fontSize: 30)),
              Text("Récord fácil: ${CreditScreen.recordFacil}", style: TextStyle(fontSize: 30)),
              Text("Récord medio: ${CreditScreen.recordMedio}", style: TextStyle(fontSize: 30)),
              Text("Récord dificil: ${CreditScreen.recordDificil}", style: TextStyle(fontSize: 30)),
            ],
          ),
        ]));
  }
 
}
