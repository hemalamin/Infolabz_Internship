// ignore: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("INTERNSHIP"),
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        // ignore: prefer_const_literals_to_create_immutables
        child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              // ignore: prefer_const_constructors
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("XYZ"),
                accountEmail: Text("xyz@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088_960_720.jpg")),
              )),
        ]),
      ),
    ),
  ));
}
