import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;

  Future<void> _takeImage() async {
    print("Opening Camera");
    //final _imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
  }

  Future<void> _uploadImage() async {
    print("Opening Gallery");
    //final _uimageFile =
    //    await ImagePicker.pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 3),
            color: Colors.grey,
          ),
          child: _storedImage != null
              ? Image.file(
                  _storedImage,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Text('No image selected'),
        ),
        Expanded(
          child: TextButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  actions: [
                    TextButton.icon(
                        onPressed: () {
                          _uploadImage().then((_) {
                            Navigator.pop(context);
                          });
                        },
                        icon: Icon(Icons.camera_alt),
                        label: Text("Camera")),
                    TextButton.icon(
                        onPressed: () {
                          _takeImage().then((_) {
                            Navigator.pop(context);
                          });
                        },
                        icon: Icon(Icons.collections),
                        label: Text("Camera")),
                  ],
                ),
              );
            },
            icon: Icon(Icons.image),
            label: Text("Add image"),
          ),
        ),
      ],
    );
  }
}
