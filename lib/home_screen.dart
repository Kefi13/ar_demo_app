import 'package:ar_demo_app/items_upload_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AR_DEMO"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => ItemsUploadScreen()));
              },
              icon: Icon(
                Icons.add,
                color: Colors.amber,
              ))
        ],
      ),
    );
  }
}
