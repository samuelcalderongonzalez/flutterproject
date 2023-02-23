// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutterproject/CreditScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

const rojo = Color.fromARGB(255, 255, 0, 0);
const verde = Color.fromARGB(255, 0, 255, 0);
const azul = Color.fromARGB(255, 0, 0, 255);
final colorlist = <Color>[rojo, verde, azul];

//Cada variable representa una coordenada (color)
var color11 = verde;
var color12 = azul;
var color13 = verde;
var color21 = rojo;
var color22 = verde;
var color23 = rojo;
var color31 = azul;
var color32 = rojo;
var color33 = azul;

//Clase del nivel fácil.
class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);
  //Almaceno el número de movimientos en una variable estática. Mientras menos movimientos, mejor.
  static int movimientos = 0;
  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Navigator.pushNamed(context, "CreditScreen");
                },
                child: const Text("Créditos")),
          ],
        ),
      ),
      //Tablero con el puzzle
      body: Container(
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            children: [
              Container(
                  child: IconButton(
                      onPressed: () {
                        updateFirstRow();
                      },
                      icon: new Icon(Icons.swap_calls))),
              Container(
                color: color11,
              ),
              Container(
                color: color12,
              ),
              Container(
                color: color13,
              ),
              Container(
                  child: IconButton(
                      onPressed: () {
                        updateSecondRow();
                      },
                      icon: new Icon(Icons.swap_calls))),
              Container(
                color: color21,
              ),
              Container(
                color: color22,
              ),
              Container(
                color: color23,
              ),
              Container(
                  child: IconButton(
                      onPressed: () {
                        updateThirdRow();
                      },
                      icon: new Icon(Icons.swap_calls))),
              Container(
                color: color31,
              ),
              Container(
                color: color32,
              ),
              Container(
                color: color33,
              ),
              Container(),
              Container(
                  child: IconButton(
                      onPressed: () {
                        updateFirstColumn();
                      },
                      icon: new Icon(Icons.swap_calls))),
              Container(
                  child: IconButton(
                      onPressed: () {
                        updateSecondColumn();
                      },
                      icon: new Icon(Icons.swap_calls))),
              Container(
                  child: IconButton(
                      onPressed: () {
                        updateThirdColumn();
                      },
                      icon: new Icon(Icons.swap_calls))),
            ]),
      ),
    );
  }

  //Funciones para rotar los colores de las diferentes columnas o filas
  void updateFirstRow() {
    if (color11 == colorlist[0]) {
      color11 = colorlist[1];
    } else if (color11 == colorlist[1]) {
      color11 = colorlist[2];
    } else if (color11 == colorlist[2]) {
      color11 = colorlist[0];
    }
    if (color12 == colorlist[0]) {
      color12 = colorlist[1];
    } else if (color12 == colorlist[1]) {
      color12 = colorlist[2];
    } else if (color12 == colorlist[2]) {
      color12 = colorlist[0];
    }
    if (color13 == colorlist[0]) {
      color13 = colorlist[1];
    } else if (color13 == colorlist[1]) {
      color13 = colorlist[2];
    } else if (color13 == colorlist[2]) {
      color13 = colorlist[0];
    }
    GameScreen.movimientos++;
    checkWin();
    setState(() {});
  }

  void updateSecondRow() {
    if (color21 == colorlist[0]) {
      color21 = colorlist[1];
    } else if (color21 == colorlist[1]) {
      color21 = colorlist[2];
    } else if (color21 == colorlist[2]) {
      color21 = colorlist[0];
    }
    if (color22 == colorlist[0]) {
      color22 = colorlist[1];
    } else if (color22 == colorlist[1]) {
      color22 = colorlist[2];
    } else if (color22 == colorlist[2]) {
      color22 = colorlist[0];
    }
    if (color23 == colorlist[0]) {
      color23 = colorlist[1];
    } else if (color23 == colorlist[1]) {
      color23 = colorlist[2];
    } else if (color23 == colorlist[2]) {
      color23 = colorlist[0];
    }
    GameScreen.movimientos++;
    checkWin();
    setState(() {});
  }

  void updateThirdRow() {
    if (color31 == colorlist[0]) {
      color31 = colorlist[1];
    } else if (color31 == colorlist[1]) {
      color31 = colorlist[2];
    } else if (color31 == colorlist[2]) {
      color31 = colorlist[0];
    }
    if (color32 == colorlist[0]) {
      color32 = colorlist[1];
    } else if (color32 == colorlist[1]) {
      color32 = colorlist[2];
    } else if (color32 == colorlist[2]) {
      color32 = colorlist[0];
    }
    if (color33 == colorlist[0]) {
      color33 = colorlist[1];
    } else if (color33 == colorlist[1]) {
      color33 = colorlist[2];
    } else if (color33 == colorlist[2]) {
      color33 = colorlist[0];
    }
    GameScreen.movimientos++;
    checkWin();
    setState(() {});
  }

  void updateFirstColumn() {
    if (color11 == colorlist[0]) {
      color11 = colorlist[1];
    } else if (color11 == colorlist[1]) {
      color11 = colorlist[2];
    } else if (color11 == colorlist[2]) {
      color11 = colorlist[0];
    }
    if (color21 == colorlist[0]) {
      color21 = colorlist[1];
    } else if (color21 == colorlist[1]) {
      color21 = colorlist[2];
    } else if (color21 == colorlist[2]) {
      color21 = colorlist[0];
    }
    if (color31 == colorlist[0]) {
      color31 = colorlist[1];
    } else if (color31 == colorlist[1]) {
      color31 = colorlist[2];
    } else if (color31 == colorlist[2]) {
      color31 = colorlist[0];
    }
    GameScreen.movimientos++;
    checkWin();
    setState(() {});
  }

  void updateSecondColumn() {
    if (color12 == colorlist[0]) {
      color12 = colorlist[1];
    } else if (color12 == colorlist[1]) {
      color12 = colorlist[2];
    } else if (color12 == colorlist[2]) {
      color12 = colorlist[0];
    }
    if (color22 == colorlist[0]) {
      color22 = colorlist[1];
    } else if (color22 == colorlist[1]) {
      color22 = colorlist[2];
    } else if (color22 == colorlist[2]) {
      color22 = colorlist[0];
    }
    if (color32 == colorlist[0]) {
      color32 = colorlist[1];
    } else if (color32 == colorlist[1]) {
      color32 = colorlist[2];
    } else if (color32 == colorlist[2]) {
      color32 = colorlist[0];
    }
    GameScreen.movimientos++;
    checkWin();
    setState(() {});
  }

  void updateThirdColumn() {
    if (color13 == colorlist[0]) {
      color13 = colorlist[1];
    } else if (color13 == colorlist[1]) {
      color13 = colorlist[2];
    } else if (color13 == colorlist[2]) {
      color13 = colorlist[0];
    }
    if (color23 == colorlist[0]) {
      color23 = colorlist[1];
    } else if (color23 == colorlist[1]) {
      color23 = colorlist[2];
    } else if (color23 == colorlist[2]) {
      color23 = colorlist[0];
    }
    if (color33 == colorlist[0]) {
      color33 = colorlist[1];
    } else if (color33 == colorlist[1]) {
      color33 = colorlist[2];
    } else if (color33 == colorlist[2]) {
      color33 = colorlist[0];
    }
    GameScreen.movimientos++;
    checkWin();
    setState(() {});
  }

  //Comprobación de si el usuario ha ganado. Esto se realiza despúes de cada movimiento.
  void checkWin() {
    for (int i = 0; i < 3; i++) {
      if (color11 == colorlist[i] &&
          color12 == colorlist[i] &&
          color13 == colorlist[i] &&
          color21 == colorlist[i] &&
          color22 == colorlist[i] &&
          color23 == colorlist[i] &&
          color31 == colorlist[i] &&
          color32 == colorlist[i] &&
          color33 == colorlist[i]) {
        CreditScreen.current = GameScreen.movimientos;
        checkNewRecord();
        Navigator.pushNamed(context, "CreditScreen");
      }
    }
  }
  
  //Gestor de persistencia. Setea el new record en caso de que haya habido uno.
  Future<void> checkNewRecord() async {
    final prefs = await SharedPreferences.getInstance();
    if ((prefs.getInt('movimientos') ?? 9999) > GameScreen.movimientos) {
      prefs.setInt('movimientos', GameScreen.movimientos);
    }
    CreditScreen.recordFacil = (prefs.getInt('movimientos') ?? 9999);
    CreditScreen.recordMedio = (prefs.getInt('movimientosMedium') ?? 9999);
    CreditScreen.recordDificil = (prefs.getInt('movimientosDificil') ?? 9999);
  }

}
