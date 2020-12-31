import 'package:aprendiendo/gatos.dart';
import 'package:aprendiendo/osos.dart';
import 'package:aprendiendo/perros.dart';
import 'package:flutter/material.dart';

// AUTOR : EDITH MARICARMEN COAUIRA CUEVAS

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                OptionsCards(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/fondos/fondo.jpg"),
          repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}

class OptionsCards extends StatefulWidget {
  @override
  _OptionsCardsState createState() => _OptionsCardsState();
}

class _OptionsCardsState extends State<OptionsCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: <Widget>[
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    tileColor: Color(0xFFEF9A9A),
                    leading: Image(
                      image: AssetImage("assets/imagenes/oso.png"),
                      width: 70,
                      color: const Color(0xFFEF9A9A),
                      colorBlendMode: BlendMode.darken,
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(
                        top: 6,
                      ),
                      child: Text("<Aprendiendo Osos>"),
                    ),
                    subtitle: Text("Descubre las diferentes razas de osos"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('APRENDER'),
                        onPressed: () {
                          print("Accediendo...");
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Osos(),
                          ));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    tileColor: Color(0xFF4FC3F7),
                    leading: Image(
                      image: AssetImage("assets/imagenes/perro.png"),
                      width: 70,
                      color: const Color(0xFF4FC3F7),
                      colorBlendMode: BlendMode.darken,
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(
                        top: 6,
                      ),
                      child: Text("<Aprendiendo Perros>"),
                    ),
                    subtitle: Text("Descubre las diferentes razas de perros"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('APRENDER'),
                        onPressed: () {
                          print("Accediendo...");
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Perros(),
                          ));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    tileColor: Color(0xFF8BC34A),
                    leading: Image(
                      image: AssetImage("assets/imagenes/gato.png"),
                      width: 70,
                      color: const Color(0xFF8BC34A),
                      colorBlendMode: BlendMode.darken,
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(
                        top: 6,
                      ),
                      child: Text("<Aprendiendo Gatos>"),
                    ),
                    subtitle: Text("Descubre las diferentes razas de gatos"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('APRENDER'),
                        onPressed: () {
                          print("Accediendo...");
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Gatos(),
                          ));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
