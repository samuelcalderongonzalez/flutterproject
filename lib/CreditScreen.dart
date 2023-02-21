import 'package:flutter/material.dart';

// ignore: camel_case_types
class CreditScreen extends StatelessWidget {
  const CreditScreen({Key? key}) : super(key: key);

  //Widget de la pantallad de créditos, con una estructura muy similar al de Inicio
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 184, 247, 112),
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
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "MainScreen");
                  },
                  child: const Text("Juego")),
            ],
          ),
        ),
        //Cuerpo de la aplicación
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fondo.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Aplicacion realizada por:", style: TextStyle(fontSize: 30)
                ),
                Text(
                  "Samuel Calderón González", style: TextStyle(fontSize: 30)
                ),
              ],
            ),
          ]),
        ));
  }
}
