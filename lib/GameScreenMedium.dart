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
var color11 = rojo;
var color12 = rojo;
var color13 = rojo;
var color21 = rojo;
var color22 = rojo;
var color23 = rojo;
var color31 = rojo;
var color32 = rojo;
var color33 = rojo;

//Clase del nivel medio. Se diferencia del anterior en que éste tiene un color más y la posibilidad de rotar una de las diagonales.
class GameScreenMedium extends StatefulWidget {
  const GameScreenMedium({Key? key}) : super(key: key);
  //Almaceno el número de movimientos en una variable estática. Mientras menos movimientos, mejor.
  static int movimientosMedium = 0;
  @override
  State<GameScreenMedium> createState() => _GameScreenMediumState();
}

class _GameScreenMediumState extends State<GameScreenMedium> {
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
    GameScreenMedium.movimientosMedium++;
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
    GameScreenMedium.movimientosMedium++;
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
    GameScreenMedium.movimientosMedium++;
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
    GameScreenMedium.movimientosMedium++;
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
    GameScreenMedium.movimientosMedium++;
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
    GameScreenMedium.movimientosMedium++;
    checkWin();
    setState(() {});
  }
  void updateDiagonal() {
    if (color31 == colorlist[0]) {
      color31 = colorlist[1];
    } else if (color31 == colorlist[1]) {
      color31 = colorlist[2];
    } else if (color31 == colorlist[2]) {
      color31 = colorlist[3];
    } else if (color31 == colorlist[3]) {
      color31 = colorlist[0];
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
    if (color13 == colorlist[0]) {
      color13 = colorlist[1];
    } else if (color13 == colorlist[1]) {
      color13 = colorlist[2];
    } else if (color13 == colorlist[2]) {
      color13 = colorlist[3];
    } else if (color13 == colorlist[3]) {
      color13 = colorlist[0];
    }
    GameScreenMedium.movimientosMedium++;
    checkWin();
    setState(() {});
  }


  //Comprobación de si el usuario ha ganado. Esto se realiza despúes de cada movimiento.
  void checkWin() {
    for (int i = 0; i < 4; i++) {
      if (color11 == colorlist[i] &&
          color12 == colorlist[i] &&
          color13 == colorlist[i] &&
          color21 == colorlist[i] &&
          color22 == colorlist[i] &&
          color23 == colorlist[i] &&
          color31 == colorlist[i] &&
          color32 == colorlist[i] &&
          color33 == colorlist[i]) {
        CreditScreen.current = GameScreenMedium.movimientosMedium;
        checkNewRecord();
        Navigator.pushNamed(context, "CreditScreen");
      }
    }
  }

  Future<void> checkNewRecord() async {
    final prefs = await SharedPreferences.getInstance();
    if ((prefs.getInt('movimientosMedium') ?? 9999) >
        GameScreenMedium.movimientosMedium) {
      prefs.setInt('movimientosMedium', GameScreenMedium.movimientosMedium);
    }
    CreditScreen.recordFacil = (prefs.getInt('movimientos') ?? 9999);
    CreditScreen.recordMedio = (prefs.getInt('movimientosMedium') ?? 9999);
    CreditScreen.recordDificil = (prefs.getInt('movimientosDificil') ?? 9999);
  }
}
