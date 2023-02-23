// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'CreditScreen.dart';

const rojo = Color.fromARGB(255, 255, 0, 0);
const verde = Color.fromARGB(255, 0, 255, 0);
const azul = Color.fromARGB(255, 0, 0, 255);
const purple = Color.fromARGB(255, 255, 0, 191);
final colorlist = <Color>[rojo, verde, azul, purple];

//Cada variable representa una coordenada (color)
var color11 = verde;
var color12 = purple;
var color13 = verde;
var color14 = verde;
var color21 = azul;
var color22 = rojo;
var color23 = verde;
var color24 = purple;
var color31 = azul;
var color32 = purple;
var color33 = azul;
var color34 = purple;
var color41 = verde;
var color42 = rojo;
var color43 = azul;
var color44 = purple;

//Clase del nivel dificil. Se diferencia del anterior en que éste tiene una fila y una columna más.
class GameScreenHard extends StatefulWidget {
  const GameScreenHard({Key? key}) : super(key: key);
  //Almaceno el número de movimientos en una variable estática. Mientras menos movimientos, mejor.
  static int movimientosHard = 0;
  @override
  State<GameScreenHard> createState() => _GameScreenHardState();
}

class _GameScreenHardState extends State<GameScreenHard> {
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
      //Tablero con el puzzle. En este caso, es un poco más grande.
      body: Container(
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
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
                color: color14,
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
                color: color24,
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
              Container(
                color: color34,
              ),
              Container(
                  child: IconButton(
                      onPressed: () {
                        updateFourthRow();
                      },
                      icon: new Icon(Icons.swap_calls))),
              Container(
                color: color41,
              ),
              Container(
                color: color42,
              ),
              Container(
                color: color43,
              ),
              Container(
                color: color44,
              ),
              Container(
                  child: IconButton(
                      onPressed: () {
                        updateDiagonal();
                      },
                      icon: new Icon(Icons.swap_calls))),
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
              Container(
                  child: IconButton(
                      onPressed: () {
                        updateFourthColumn();
                      },
                      icon: new Icon(Icons.swap_calls))),
            ]),
      ),
    );
  }

  //Funciones para rotar los colores de las diferentes columnas, filas o diagonal.
  void updateFirstRow() {
    if (color11 == colorlist[0]) {
      color11 = colorlist[1];
    } else if (color11 == colorlist[1]) {
      color11 = colorlist[2];
    } else if (color11 == colorlist[2]) {
      color11 = colorlist[3];
    } else if (color11 == colorlist[3]) {
      color11 = colorlist[0];
    }
    if (color12 == colorlist[0]) {
      color12 = colorlist[1];
    } else if (color12 == colorlist[1]) {
      color12 = colorlist[2];
    } else if (color12 == colorlist[2]) {
      color12 = colorlist[3];
    } else if (color12 == colorlist[3]) {
      color12 = colorlist[0];
    }
    if (color13 == colorlist[0]) {
      color13 = colorlist[1];
    } else if (color13 == colorlist[1]) {
      color13 = colorlist[2];
    } else if (color13 == colorlist[2]) {
      color13 = colorlist[3];
    } else if (color13 == colorlist[3]) {
      color13 = colorlist[0];
    }
    if (color14 == colorlist[0]) {
      color14 = colorlist[1];
    } else if (color14 == colorlist[1]) {
      color14 = colorlist[2];
    } else if (color14 == colorlist[2]) {
      color14 = colorlist[3];
    } else if (color14 == colorlist[3]) {
      color14 = colorlist[0];
    }
    GameScreenHard.movimientosHard++;
    checkWin();
    setState(() {});
  }

  void updateSecondRow() {
    if (color21 == colorlist[0]) {
      color21 = colorlist[1];
    } else if (color21 == colorlist[1]) {
      color21 = colorlist[2];
    } else if (color21 == colorlist[2]) {
      color21 = colorlist[3];
    } else if (color21 == colorlist[3]) {
      color21 = colorlist[0];
    }

    if (color22 == colorlist[0]) {
      color22 = colorlist[1];
    } else if (color22 == colorlist[1]) {
      color22 = colorlist[2];
    } else if (color22 == colorlist[2]) {
      color22 = colorlist[3];
    } else if (color22 == colorlist[3]) {
      color22 = colorlist[0];
    }
    if (color23 == colorlist[0]) {
      color23 = colorlist[1];
    } else if (color23 == colorlist[1]) {
      color23 = colorlist[2];
    } else if (color23 == colorlist[2]) {
      color23 = colorlist[3];
    } else if (color23 == colorlist[3]) {
      color23 = colorlist[0];
    }
    if (color24 == colorlist[0]) {
      color24 = colorlist[1];
    } else if (color24 == colorlist[1]) {
      color24 = colorlist[2];
    } else if (color24 == colorlist[2]) {
      color24 = colorlist[3];
    } else if (color24 == colorlist[3]) {
      color24 = colorlist[0];
    }
    GameScreenHard.movimientosHard++;
    checkWin();
    setState(() {});
  }

  void updateThirdRow() {
    if (color31 == colorlist[0]) {
      color31 = colorlist[1];
    } else if (color31 == colorlist[1]) {
      color31 = colorlist[2];
    } else if (color31 == colorlist[2]) {
      color31 = colorlist[3];
    } else if (color31 == colorlist[3]) {
      color31 = colorlist[0];
    }
    if (color32 == colorlist[0]) {
      color32 = colorlist[1];
    } else if (color32 == colorlist[1]) {
      color32 = colorlist[2];
    } else if (color32 == colorlist[2]) {
      color32 = colorlist[3];
    } else if (color32 == colorlist[3]) {
      color32 = colorlist[0];
    }
    if (color33 == colorlist[0]) {
      color33 = colorlist[1];
    } else if (color33 == colorlist[1]) {
      color33 = colorlist[2];
    } else if (color33 == colorlist[2]) {
      color33 = colorlist[3];
    } else if (color33 == colorlist[3]) {
      color33 = colorlist[0];
    }
    if (color34 == colorlist[0]) {
      color34 = colorlist[1];
    } else if (color34 == colorlist[1]) {
      color34 = colorlist[2];
    } else if (color34 == colorlist[2]) {
      color34 = colorlist[3];
    } else if (color34 == colorlist[3]) {
      color34 = colorlist[0];
    }
    GameScreenHard.movimientosHard++;
    checkWin();
    setState(() {});
  }

  void updateFourthRow() {
    if (color41 == colorlist[0]) {
      color41 = colorlist[1];
    } else if (color41 == colorlist[1]) {
      color41 = colorlist[2];
    } else if (color41 == colorlist[2]) {
      color41 = colorlist[3];
    } else if (color41 == colorlist[3]) {
      color41 = colorlist[0];
    }
    if (color42 == colorlist[0]) {
      color42 = colorlist[1];
    } else if (color42 == colorlist[1]) {
      color42 = colorlist[2];
    } else if (color42 == colorlist[2]) {
      color42 = colorlist[3];
    } else if (color42 == colorlist[3]) {
      color42 = colorlist[0];
    }
    if (color43 == colorlist[0]) {
      color43 = colorlist[1];
    } else if (color43 == colorlist[1]) {
      color43 = colorlist[2];
    } else if (color43 == colorlist[2]) {
      color43 = colorlist[3];
    } else if (color43 == colorlist[3]) {
      color43 = colorlist[0];
    }
    if (color44 == colorlist[0]) {
      color44 = colorlist[1];
    } else if (color44 == colorlist[1]) {
      color44 = colorlist[2];
    } else if (color44 == colorlist[2]) {
      color44 = colorlist[3];
    } else if (color44 == colorlist[3]) {
      color44 = colorlist[0];
    }
    GameScreenHard.movimientosHard++;
    checkWin();
    setState(() {});
  }

  void updateFirstColumn() {
    if (color11 == colorlist[0]) {
      color11 = colorlist[1];
    } else if (color11 == colorlist[1]) {
      color11 = colorlist[2];
    } else if (color11 == colorlist[2]) {
      color11 = colorlist[3];
    } else if (color11 == colorlist[3]) {
      color11 = colorlist[0];
    }
    if (color21 == colorlist[0]) {
      color21 = colorlist[1];
    } else if (color21 == colorlist[1]) {
      color21 = colorlist[2];
    } else if (color21 == colorlist[2]) {
      color21 = colorlist[3];
    } else if (color21 == colorlist[3]) {
      color21 = colorlist[0];
    }
    if (color31 == colorlist[0]) {
      color31 = colorlist[1];
    } else if (color31 == colorlist[1]) {
      color31 = colorlist[2];
    } else if (color31 == colorlist[2]) {
      color31 = colorlist[3];
    } else if (color31 == colorlist[3]) {
      color31 = colorlist[0];
    }
    if (color41 == colorlist[0]) {
      color41 = colorlist[1];
    } else if (color41 == colorlist[1]) {
      color41 = colorlist[2];
    } else if (color41 == colorlist[2]) {
      color41 = colorlist[3];
    } else if (color41 == colorlist[3]) {
      color41 = colorlist[0];
    }
    GameScreenHard.movimientosHard++;
    checkWin();
    setState(() {});
  }

  void updateSecondColumn() {
    if (color12 == colorlist[0]) {
      color12 = colorlist[1];
    } else if (color12 == colorlist[1]) {
      color12 = colorlist[2];
    } else if (color12 == colorlist[2]) {
      color12 = colorlist[3];
    } else if (color12 == colorlist[3]) {
      color12 = colorlist[0];
    }
    if (color22 == colorlist[0]) {
      color22 = colorlist[1];
    } else if (color22 == colorlist[1]) {
      color22 = colorlist[2];
    } else if (color22 == colorlist[2]) {
      color22 = colorlist[3];
    } else if (color22 == colorlist[3]) {
      color22 = colorlist[0];
    }
    if (color32 == colorlist[0]) {
      color32 = colorlist[1];
    } else if (color32 == colorlist[1]) {
      color32 = colorlist[2];
    } else if (color32 == colorlist[2]) {
      color32 = colorlist[3];
    } else if (color32 == colorlist[3]) {
      color32 = colorlist[0];
    }
    if (color42 == colorlist[0]) {
      color42 = colorlist[1];
    } else if (color42 == colorlist[1]) {
      color42 = colorlist[2];
    } else if (color42 == colorlist[2]) {
      color42 = colorlist[3];
    } else if (color42 == colorlist[3]) {
      color42 = colorlist[0];
    }
    GameScreenHard.movimientosHard++;
    checkWin();
    setState(() {});
  }

  void updateThirdColumn() {
    if (color13 == colorlist[0]) {
      color13 = colorlist[1];
    } else if (color13 == colorlist[1]) {
      color13 = colorlist[2];
    } else if (color13 == colorlist[2]) {
      color13 = colorlist[3];
    } else if (color13 == colorlist[3]) {
      color13 = colorlist[0];
    }
    if (color23 == colorlist[0]) {
      color23 = colorlist[1];
    } else if (color23 == colorlist[1]) {
      color23 = colorlist[2];
    } else if (color23 == colorlist[2]) {
      color23 = colorlist[3];
    } else if (color23 == colorlist[3]) {
      color23 = colorlist[0];
    }
    if (color33 == colorlist[0]) {
      color33 = colorlist[1];
    } else if (color33 == colorlist[1]) {
      color33 = colorlist[2];
    } else if (color33 == colorlist[2]) {
      color33 = colorlist[3];
    } else if (color33 == colorlist[3]) {
      color33 = colorlist[0];
    }
    if (color43 == colorlist[0]) {
      color43 = colorlist[1];
    } else if (color43 == colorlist[1]) {
      color43 = colorlist[2];
    } else if (color43 == colorlist[2]) {
      color43 = colorlist[3];
    } else if (color43 == colorlist[3]) {
      color43 = colorlist[0];
    }
    GameScreenHard.movimientosHard++;
    checkWin();
    setState(() {});
  }

  void updateFourthColumn() {
    if (color14 == colorlist[0]) {
      color14 = colorlist[1];
    } else if (color14 == colorlist[1]) {
      color14 = colorlist[2];
    } else if (color14 == colorlist[2]) {
      color14 = colorlist[3];
    } else if (color14 == colorlist[3]) {
      color14 = colorlist[0];
    }
    if (color24 == colorlist[0]) {
      color24 = colorlist[1];
    } else if (color24 == colorlist[1]) {
      color24 = colorlist[2];
    } else if (color24 == colorlist[2]) {
      color24 = colorlist[3];
    } else if (color24 == colorlist[3]) {
      color24 = colorlist[0];
    }
    if (color34 == colorlist[0]) {
      color34 = colorlist[1];
    } else if (color34 == colorlist[1]) {
      color34 = colorlist[2];
    } else if (color34 == colorlist[2]) {
      color34 = colorlist[3];
    } else if (color34 == colorlist[3]) {
      color34 = colorlist[0];
    }
    if (color44 == colorlist[0]) {
      color44 = colorlist[1];
    } else if (color44 == colorlist[1]) {
      color44 = colorlist[2];
    } else if (color44 == colorlist[2]) {
      color44 = colorlist[3];
    } else if (color44 == colorlist[3]) {
      color44 = colorlist[0];
    }
    GameScreenHard.movimientosHard++;
    checkWin();
    setState(() {});
  }

  void updateDiagonal() {
    if (color41 == colorlist[0]) {
      color41 = colorlist[1];
    } else if (color41 == colorlist[1]) {
      color41 = colorlist[2];
    } else if (color41 == colorlist[2]) {
      color41 = colorlist[3];
    } else if (color41 == colorlist[3]) {
      color41 = colorlist[0];
    }
    if (color32 == colorlist[0]) {
      color32 = colorlist[1];
    } else if (color32 == colorlist[1]) {
      color32 = colorlist[2];
    } else if (color32 == colorlist[2]) {
      color32 = colorlist[3];
    } else if (color32 == colorlist[3]) {
      color32 = colorlist[0];
    }
    if (color23 == colorlist[0]) {
      color23 = colorlist[1];
    } else if (color23 == colorlist[1]) {
      color23 = colorlist[2];
    } else if (color23 == colorlist[2]) {
      color23 = colorlist[3];
    } else if (color23 == colorlist[3]) {
      color23 = colorlist[0];
    }
    if (color14 == colorlist[0]) {
      color14 = colorlist[1];
    } else if (color14 == colorlist[1]) {
      color14 = colorlist[2];
    } else if (color14 == colorlist[2]) {
      color14 = colorlist[3];
    } else if (color14 == colorlist[3]) {
      color14 = colorlist[0];
    }
    GameScreenHard.movimientosHard++;
    checkWin();
    setState(() {});
  }

  //Comprobación de si el usuario ha ganado. Esto se realiza despúes de cada movimiento.
  void checkWin() {
    for (int i = 0; i < 4; i++) {
      if (color11 == colorlist[i] &&
          color12 == colorlist[i] &&
          color13 == colorlist[i] &&
          color14 == colorlist[i] &&
          color21 == colorlist[i] &&
          color22 == colorlist[i] &&
          color23 == colorlist[i] &&
          color24 == colorlist[i] &&
          color31 == colorlist[i] &&
          color32 == colorlist[i] &&
          color33 == colorlist[i] &&
          color34 == colorlist[i] &&
          color41 == colorlist[i] &&
          color42 == colorlist[i] &&
          color43 == colorlist[i] &&
          color44 == colorlist[i]) {
        CreditScreen.current = GameScreenHard.movimientosHard;
        checkNewRecord();
        Navigator.pushNamed(context, "CreditScreen");
      }
    }
  }
  //Gestor de persistencia. Setea el new record en caso de que haya habido uno.
  Future<void> checkNewRecord() async {
    final prefs = await SharedPreferences.getInstance();
    if ((prefs.getInt('movimientosHard') ?? 9999) >
        GameScreenHard.movimientosHard) {
      prefs.setInt('movimientosHard', GameScreenHard.movimientosHard);
    }
    CreditScreen.recordFacil = (prefs.getInt('movimientos') ?? 9999);
    CreditScreen.recordMedio = (prefs.getInt('movimientosMedium') ?? 9999);
    CreditScreen.recordDificil = (prefs.getInt('movimientosHard') ?? 9999);
  }
}
