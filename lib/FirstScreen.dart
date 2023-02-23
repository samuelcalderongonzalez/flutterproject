// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'CreditScreen.dart';
import 'GameScreen.dart';
import 'GameScreenHard.dart';
import 'GameScreenMedium.dart';

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
                    checkNewRecord();
                    Navigator.pushNamed(context, "CreditScreen");
                  },
                  child: const Text("Créditos")),
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
                Text("Bienvenido",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        GameScreen.movimientos = 0;
                        Navigator.pushNamed(context, "GameScreen");
                      },
                      child: Text("Fácil",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ),
                    TextButton(
                      onPressed: () {
                        GameScreenMedium.movimientosMedium = 0;
                        Navigator.pushNamed(context, "GameScreenMedium");
                      },
                      child: Text("Medio",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ),
                    TextButton(
                      onPressed: () {
                        GameScreenHard.movimientosHard = 0;
                        Navigator.pushNamed(context, "GameScreenHard");
                      },
                      child: Text("Dificil",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ),
                  ],
                )
              ],
            ),
          ]),
        ));
  }
  Future<void> checkNewRecord() async {
    final prefs = await SharedPreferences.getInstance();
    CreditScreen.recordFacil = (prefs.getInt('movimientos') ?? 9999);
    CreditScreen.recordMedio = (prefs.getInt('movimientosMedium') ?? 9999);
    CreditScreen.recordDificil = (prefs.getInt('movimientosDificil') ?? 9999);
  }
}
