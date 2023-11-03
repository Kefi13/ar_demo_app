import 'dart:typed_data';

import 'package:flutter/material.dart';

class ItemsUploadScreen extends StatefulWidget {
  const ItemsUploadScreen({super.key});

  @override
  State<ItemsUploadScreen> createState() => _ItemsUploadScreenState();
}

class _ItemsUploadScreenState extends State<ItemsUploadScreen> {
  Uint8List? imageFileUint8List;
  bool isuploading = false;

  //upload form screen
  Widget uploadFormScreen() {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Upload Items",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          isuploading == true
              ? const LinearProgressIndicator(
                  color: Colors.blue,
                )
              : Container(),
          //image
          SizedBox(
            height: 230,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Center(
                child: imageFileUint8List != null
                    ? Image.memory(imageFileUint8List!)
                    : Icon(
                        Icons.image_not_supported,
                        color: Colors.grey,
                      )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return uploadFormScreen();
  }
}
