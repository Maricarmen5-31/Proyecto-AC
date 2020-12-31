import 'package:flutter/material.dart';
// AUTOR : EDITH MARICARMEN COAUIRA CUEVAS

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(
        children: <Widget>[
          //Background(),
          SingleChildScrollView(
            child: Column(
              children: [
                ContenedorOsos(),
                ContenedorPerros(),
                ContenedorGatos(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.teal[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/fondos/fondo.jpg"),
          repeat: ImageRepeat.repeat,
        ),
        //color: const Color(0000),
      ),
    );
  }
}

class TituloO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: new EdgeInsets.only(
          top: 30.0,
          bottom: 10.0,
          left: 0,
        ),
        child: Center(
          child: Text(
            "APRENDIENDO OSOS",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30.0,
              color: Colors.teal,
              fontWeight: FontWeight.w800,
              fontFamily: 'Grandstander',
            ),
          ),
        ));
  }
}

class TituloP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: new EdgeInsets.only(
          top: 30.0,
          bottom: 10.0,
          left: 0,
        ),
        child: Center(
          child: Text(
            "APRENDIENDO PERROS",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30.0,
              color: Colors.teal,
              fontWeight: FontWeight.w800,
              fontFamily: 'Grandstander',
            ),
          ),
        ));
  }
}

class TituloG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: new EdgeInsets.only(
          top: 30.0,
          bottom: 10.0,
          left: 0,
        ),
        child: Center(
          child: Text(
            "APRENDIENDO GATOS",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30.0,
              color: Colors.teal,
              fontWeight: FontWeight.w800,
              fontFamily: 'Grandstander',
            ),
          ),
        ));
  }
}

class ContenedorOsos extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TituloO(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 440.0,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Oso de anteojos",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/osos/0.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Oso panda",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/osos/1.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Oso pardo",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/osos/2.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Oso polar",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/osos/3.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class ContenedorGatos extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TituloG(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 440.0,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Gato angora turco",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/gatos/0.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Gato bengala",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/gatos/1.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Gato bombay",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/gatos/2.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Gato british Shorthair",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/gatos/3.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Gato oriental",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/gatos/4.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Gato persa",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/gatos/5.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Gato siamés",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/gatos/6.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Gato sphynx",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/gatos/7.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class ContenedorPerros extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TituloP(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 440.0,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Bulldog",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/perros/0.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Caniche o poodles",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/perros/1.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Chihuahua",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/perros/2.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Dachshund",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/perros/3.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Dálmata",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/perros/4.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Dóberman",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/perros/5.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Husky siberiano",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/perros/6.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Pastor alemán",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/perros/7.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Pug o carlino",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/perros/8.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "San Bernando",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image(
                        image: AssetImage('assets/perros/9.jpg'),
                        width: 170,
                        color: const Color(0xFFFFF9C4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
