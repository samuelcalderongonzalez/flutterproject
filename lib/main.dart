import 'package:flutter/material.dart';
import 'package:flutterproject/FirstScreen.dart';
import 'package:flutterproject/CreditScreen.dart';
import 'package:flutterproject/GameScreen.dart';
import 'package:flutterproject/GameScreenHard.dart';
import 'package:flutterproject/GameScreenMedium.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  //Widget de la aplicación principal. Posee las rutas necesarias para viajar entre las diferentes ventanas
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "FirstScreen",
        routes: {
          "FirstScreen": (BuildContext context) => const FirstScreen(),
          "CreditScreen": (BuildContext context) => const CreditScreen(),
          "GameScreen": (BuildContext context) => const GameScreen(),
          "GameScreenMedium": (BuildContext context) => const GameScreenMedium(),
          "GameScreenHard": (BuildContext context) => const GameScreenHard(),
        });
  }
}
