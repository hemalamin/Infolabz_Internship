// ignore: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("INTERNSHIP"),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_shopping_cart)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.account_box_outlined))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
    ),
  ));
}
