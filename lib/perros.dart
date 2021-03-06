import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

// AUTOR : EDITH MARICARMEN COAUIRA CUEVAS

class Perros extends StatefulWidget {
  @override
  _PerrosState createState() => _PerrosState();
}

class _PerrosState extends State<Perros> {
  List _outputs;
  File _image;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/perros/model_unquant.tflite",
      labels: "assets/perros/labels.txt",
      numThreads: 1,
    );
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        imageMean: 0.0,
        imageStd: 255.0,
        numResults: 2,
        threshold: 0.2,
        asynch: true);
    setState(() {
      _loading = false;
      _outputs = output;
    });
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  pickImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = image;
    });
    classifyImage(_image);
  }

  pickImageC() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = image;
    });
    classifyImage(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background(),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                    image: DecorationImage(
                        image: AssetImage('assets/imagenes/dog.png')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: new EdgeInsets.only(
                      top: 10,
                    ),
                    child: RaisedButton(
                      color: Colors.teal,
                      child: Center(
                        heightFactor: 2.0,
                        widthFactor: 1.5,
                        child: Text("APRENDIENDO RAZAS DE PERROS",
                            style: const TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700)),
                      ),
                      shape: StadiumBorder(),
                    )),
                SizedBox(
                  height: 10,
                ),
                _loading
                    ? Container(
                        height: 300,
                        width: 300,
                      )
                    : Container(
                        margin: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            _image == null
                                ? Container(
                                    child: Text(
                                        "Por favor seleccione la imagen desde la galeria o camara"),
                                  )
                                : Image.file(_image),
                            SizedBox(
                              height: 20,
                            ),
                            _image == null
                                ? Container()
                                : _outputs != null
                                    ? Text(
                                        _outputs[0]["label"],
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      )
                                    : Container(child: Text(""))
                          ],
                        ),
                      ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        color: Colors.white,
                        margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
                        child: IconButton(
                          onPressed: pickImageC,
                          icon: Icon(
                            Icons.camera,
                            color: Colors.teal,
                          ),
                          iconSize: 50,
                          color: Colors.blue,
                          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        )),
                    Container(
                        color: Colors.white,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: IconButton(
                          icon: Icon(
                            Icons.image,
                            color: Colors.teal,
                          ),
                          iconSize: 50,
                          onPressed: pickImage,
                          color: Colors.blue,
                          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        )),
                  ],
                ),
              ],
            ),
          ),
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
          image: AssetImage("assets/fondos/fonfop.jpg"),
          repeat: ImageRepeat.repeat,
        ),
        color: const Color(0xFFFFF9C4),
      ),
    );
  }
}
