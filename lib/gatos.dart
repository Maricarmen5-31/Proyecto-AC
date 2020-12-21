import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class Gatos extends StatefulWidget {
  @override
  _GatosState createState() => _GatosState();
}

class _GatosState extends State<Gatos> {
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
      print("Error al obtener la imagfen de la galeria");
    }

    classifyImage();
  }

  Future classifyImage() async {
    await Tflite.loadModel(
        model: "assets/gatos/model_unquant.tflite",
        labels: "assets/gatos/labels.txt");
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
                  height: 5,
                ),
                result != null && result[0]['label'] == "7 Gato sphynx"
                    ? Container(
                        child: Image.asset(
                          "assets/gatos/7.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Container(),
                result != null && result[0]['label'] == "6 Gato siamés"
                    ? Container(
                        child: Image.asset(
                          "assets/gatos/6.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Container(),
                result != null && result[0]['label'] == "5 Gato persa"
                    ? Container(
                        child: Image.asset(
                          "assets/gatos/5.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Container(),
                result != null && result[0]['label'] == "4 Gato oriental"
                    ? Container(
                        child: Image.asset(
                          "assets/gatos/4.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Container(),
                result != null &&
                        result[0]['label'] == "3 Gato british Shorthair"
                    ? Container(
                        child: Image.asset(
                          "assets/gatos/3.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Container(),
                result != null && result[0]['label'] == "2 Gato bombay"
                    ? Container(
                        child: Image.asset(
                          "assets/gatos/2.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Container(),
                result != null && result[0]['label'] == "1 Gato bengala"
                    ? Container(
                        child: Image.asset(
                          "assets/gatos/1.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Container(),
                result != null && result[0]['label'] == "0 Gato angora turco"
                    ? Container(
                        child: Image.asset(
                          "assets/gatos/0.jpg",
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
