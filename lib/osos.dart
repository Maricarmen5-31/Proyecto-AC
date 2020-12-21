import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class Osos extends StatefulWidget {
  @override
  _OsosState createState() => _OsosState();
}

class _OsosState extends State<Osos> {
  File imageURI;
  var result;
  String path;

  Future getImageFromCamera() async {
    try {
      var image = await ImagePicker.pickImage(source: ImageSource.camera);

      setState(() {
        imageURI = image;
        path = image.path;
      });
    } catch (e) {
      print("Error al obtener la imagen desde la camara");
    }

    classifyImage();
  }

  Future getImageFromGallery() async {
    try {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        imageURI = image;
        path = image.path;
      });
    } catch (e) {
      print("Error al obtener la imagen desde la galeria");
    }

    classifyImage();
  }

  Future classifyImage() async {
    await Tflite.loadModel(
        model: "assets/osos/model_unquant.tflite",
        labels: "assets/osos/labels.txt");
    var output = await Tflite.runModelOnImage(path: path);

    setState(() {
      result = output;
      print(output[0]["confidence"].toStringAsFixed(3));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(48, 48, 48, 1),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                imageURI == null
                    ? Text(
                        'por favor seleccione la imagen desde la galeria o camara',
                        style: TextStyle(color: Colors.white),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.file(imageURI,
                            width: 300, height: 200, fit: BoxFit.cover),
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
                        child: IconButton(
                          onPressed: () => getImageFromCamera(),
                          icon: Icon(
                            Icons.camera,
                            color: Colors.white,
                          ),
                          iconSize: 50,
                          color: Colors.blue,
                          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: IconButton(
                          icon: Icon(Icons.image, color: Colors.white),
                          iconSize: 50,
                          onPressed: () => getImageFromGallery(),
                          color: Colors.blue,
                          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        )),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                result != null && result[0]['label'] == "3 Oso Pardo"
                    ? Container(
                        child: Image.asset(
                          "assets/osos/3.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Container(),
                result != null && result[0]['label'] == "2 Oso Panda"
                    ? Container(
                        child: Image.asset(
                          "assets/osos/2.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Container(),
                result != null && result[0]['label'] == "1 Oso Polar"
                    ? Container(
                        child: Image.asset(
                          "assets/osos/1.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Container(),
                result != null && result[0]['label'] == "0 Oso de Anteojos"
                    ? Container(
                        child: Image.asset(
                          "assets/osos/0.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: 10,
                ),
                result == null
                    ? Text(
                        'Resultado',
                        style: TextStyle(color: Colors.white),
                      )
                    : Container(
                        child: Text(
                          "${result[0]['label'].substring(2)} : ${(result[0]['confidence'] * 100).toStringAsFixed(1)} %",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      )
              ]),
        )));
  }
}
