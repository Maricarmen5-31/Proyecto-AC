import 'dart:async';
import 'package:aprendiendo/aplicacion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// AUTOR : EDITH MARICARMEN COAUIRA CUEVAS

class PantallaBienvenida extends StatefulWidget {
  @override
  _PantallaBienvenidaState createState() => _PantallaBienvenidaState();
}

class _PantallaBienvenidaState extends State<PantallaBienvenida> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => Aplicacion()), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            color: Colors.white,
            //child: Image.asset("assets/fondo.jpg",fit: BoxFit.cover,),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 250,
                    height: 450,
                    child: Image.asset('assets/logos/im.jpg')),
                Container(
                  height: 4,
                  width: 200,
                  decoration: BoxDecoration(color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Aprendiendo",
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
