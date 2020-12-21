import 'package:flutter/material.dart';

import './perros.dart' as dog;
import './gatos.dart' as cat;
import './osos.dart' as oso;

class Aplicacion extends StatefulWidget {
  @override
  _AplicacionState createState() => _AplicacionState();
}

class _AplicacionState extends State<Aplicacion>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        title: new Text("Aprendiendo animales"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.pets),
              text: "Perros",
            ),
            new Tab(
              icon: new Icon(Icons.pets),
              text: "Gatos",
            ),
            new Tab(
              icon: new Icon(Icons.pets),
              text: "Osos",
            ),
          ],
        ),
      ),
      body: new TabBarView(controller: controller, children: <Widget>[
        new dog.Perros(),
        new cat.Gatos(),
        new oso.Osos(),
      ]),
      bottomNavigationBar: new Material(
        color: Colors.teal[500],
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.pets),
            ),
            new Tab(
              icon: new Icon(Icons.pets),
            ),
            new Tab(
              icon: new Icon(Icons.pets),
            ),
          ],
        ),
      ),
    );
  }
}
