import 'package:aprendiendo/home.dart';
import 'package:aprendiendo/lista.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'perros.dart';
import 'home.dart';
import 'gatos.dart';
import 'lista.dart';
import 'osos.dart';

class Aplicacion extends StatefulWidget {
  @override
  _AplicacionState createState() => _AplicacionState();
}

class _AplicacionState extends State<Aplicacion> {
  int selectedIndex = 2;
  List<Widget> listWidgets = [Osos(), Perros(), Home(), Gatos(), Lista()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Aprendiendo animales"),
        backgroundColor: Colors.teal,
      ),
      body: listWidgets[selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.pets, title: 'Osos'),
          TabItem(icon: Icons.pets, title: 'Perros'),
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.pets, title: 'Gatos'),
          TabItem(icon: Icons.all_inbox, title: 'Lista'),
        ],
        onTap: onItemTapped,
        backgroundColor: Colors.teal,
        initialActiveIndex: 2, //optional, default as 0
        //onTap: (int i) => print('click index=$i'),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
