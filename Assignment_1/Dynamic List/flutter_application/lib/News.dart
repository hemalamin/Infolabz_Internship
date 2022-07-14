import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("List Generation"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("Doctor Booking"),
            leading: Icon(Icons.add_box),
          ),
          Divider(
            height: 0.3,
          ),
          ListTile(title: Text("Flight Booking"), leading: Icon(Icons.flight)),
          Divider(
            height: 0.3,
          ),
          ListTile(
            title: Text("Train Booking"),
            leading: Icon(Icons.train),
          ),
          Divider(
            height: 0.3,
          ),
          ListTile(
            title: Text("Auto Booking"),
            leading: Icon(Icons.auto_awesome),
          )
        ],
      ),
    ),
  ));
}
