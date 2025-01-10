import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerWidget extends StatefulWidget {
  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker picker = ImagePicker();
  XFile? _imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _imageFile == null
                ? const Text('No image selected.')
                : Image.file(File(_imageFile!.path)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final XFile? image = await picker.pickImage(source:ImageSource.gallery);
                setState(() {
                  _imageFile = image;
                });
              },
              child: const Text('Pick Image from Gallery'),
            ),ElevatedButton(
              onPressed: () async {
                final XFile? image = await picker.pickImage(source:ImageSource.camera);
                setState(() {
                  _imageFile = image;
                });
              },
              child: const Text('Pick Image from camara'),
            ),
          ],
        ),
      ),
    );
  }
}
