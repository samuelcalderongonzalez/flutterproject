// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  //Widget de la pantalla de Inicio
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade100,
        //Barra superior
        appBar: AppBar(),
        //Drawer de navegación con una lista de dos botones
        drawer: Drawer(
          child: ListView(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "MainScreen");
                  },
                  child: const Text("Juego")),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "CreditScreen");
                  },
                  child: const Text("Créditos"))
            ],
          ),
        ),
        //Cuerpo de la aplicacíón. Contiene una columna con dos textos
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/325624a61782e94.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Bienvenido", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)
                ),
                TextButton(onPressed: () {}, child: Text("Jugar", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),)
              ],
            ),
          ]),
        ));
  }
}
