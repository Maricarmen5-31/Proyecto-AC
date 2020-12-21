import 'package:flutter/material.dart';
import 'aplicacion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Home page',
        home: Scaffold(
          body: Stack(
            children: <Widget>[
              Background(),
              SingleChildScrollView(child: Contenedor()),
            ],
          ),
        ));
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
        color: const Color(0xFFFFF9C4),
      ),
    );
  }
}

class Contenedor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: new EdgeInsets.only(
          top: 50.0,
        ),
        child: Column(
          children: <Widget>[
            Titulo(),
            ImagenLogo(),
            BotonIniciar(),
          ],
        ));
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: new EdgeInsets.only(
          top: 30.0,
          bottom: 10.0,
        ),
        child: Text(
          "Aprendiendo",
          style: const TextStyle(
            fontSize: 55.0,
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontFamily: 'Grandstander',
          ),
        ));
  }
}

class ImagenLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/logos/cu.jpg'),
      margin: new EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
    );
  }
}

class BotonIniciar extends StatefulWidget {
  @override
  State<BotonIniciar> createState() {
    return Comenzar();
  }
}

class Comenzar extends State<BotonIniciar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: new EdgeInsets.only(
          top: 10,
        ),
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Aplicacion(),
            ));
          },
          color: Color(0xFF1B5E20),
          child: Center(
            heightFactor: 2.0,
            widthFactor: 1.5,
            child: Text("COMENZAR",
                style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
          ),
          shape: StadiumBorder(),
        ));
  }
}
