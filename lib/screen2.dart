import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('camera gesture')),
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: _image == null ? Text('No image') : Row(
          children: <Widget>[
            Container(decoration:
            BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.9),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
            height:200.0,width:300.0,margin:EdgeInsets.all(20.0),child: SingleChildScrollView(child: Image.file(_image))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:_dialogbox,     
        
        child: Icon(Icons.add_a_photo),
        tooltip: 'open camera',
      ),
    );
  }

  Future openCamera() async {
  
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future openGallery() async {
    
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = picture;
    });
  }

  Future<void> _dialogbox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(),
            content: SingleChildScrollView(
                child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text('Take a photo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  onTap: openCamera,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                GestureDetector(
                  child: Text('select from gallery',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  onTap: openGallery,
                ),
              ],
            )),
          );
        });
  }
}
