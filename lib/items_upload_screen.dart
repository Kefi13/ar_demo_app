import 'dart:typed_data';

import 'package:flutter/material.dart';

class ItemsUploadScreen extends StatefulWidget {
  const ItemsUploadScreen({super.key});

  @override
  State<ItemsUploadScreen> createState() => _ItemsUploadScreenState();
}

class _ItemsUploadScreenState extends State<ItemsUploadScreen> {
  Uint8List? imageFileUint8List;

  TextEditingController sellerNameTextEditingController =
      TextEditingController();
  TextEditingController sellerPhoneTextEditingController =
      TextEditingController();
  TextEditingController itemNameTextEditingController = TextEditingController();
  TextEditingController itemDescriptionTextEditingController =
      TextEditingController();
  TextEditingController itemPriceTextEditingController =
      TextEditingController();

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
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cloud_done,
                color: Colors.white,
              ))
        ],
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
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),

          //seller name list tile -------------------------------------------------------------

          ListTile(
            leading: const Icon(
              Icons.person_pin_rounded,
              color: Colors.white,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: sellerNameTextEditingController,
                decoration: const InputDecoration(
                    hintText: "seller name",
                    hintStyle: TextStyle(color: Colors.green),
                    border: InputBorder.none),
              ),
            ),
          ),
          const Divider(
            color: Colors.white30,
            thickness: 1,
          ),

          // seller phone
          ListTile(
            leading: const Icon(
              Icons.person_pin_rounded,
              color: Colors.white,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: sellerPhoneTextEditingController,
                decoration: const InputDecoration(
                    hintText: "seller Phone",
                    hintStyle: TextStyle(color: Colors.green),
                    border: InputBorder.none),
              ),
            ),
          ),
          const Divider(
            color: Colors.white30,
            thickness: 1,
          ),

          // Item Name
          ListTile(
            leading: const Icon(
              Icons.person_pin_rounded,
              color: Colors.white,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: itemNameTextEditingController,
                decoration: const InputDecoration(
                    hintText: "item name",
                    hintStyle: TextStyle(color: Colors.green),
                    border: InputBorder.none),
              ),
            ),
          ),
          const Divider(
            color: Colors.white30,
            thickness: 1,
          ),

          // Item Description
          ListTile(
            leading: const Icon(
              Icons.person_pin_rounded,
              color: Colors.white,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: itemDescriptionTextEditingController,
                decoration: const InputDecoration(
                    hintText: "Item description ",
                    hintStyle: TextStyle(color: Colors.green),
                    border: InputBorder.none),
              ),
            ),
          ),
          const Divider(
            color: Colors.white30,
            thickness: 1,
          ),

          // item price

          ListTile(
            leading: const Icon(
              Icons.person_pin_rounded,
              color: Colors.white,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: itemPriceTextEditingController,
                decoration: const InputDecoration(
                    hintText: "Item Price ",
                    hintStyle: TextStyle(color: Colors.green),
                    border: InputBorder.none),
              ),
            ),
          ),
          const Divider(
            color: Colors.white30,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return uploadFormScreen();
  }
}
