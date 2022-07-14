import 'package:flutter/material.dart';

final names = ['Bank', 'Doctor', 'Flight', 'Train', 'Bus', 'Phone', 'Laptop'];
final icons = [
  Icons.account_balance,
  Icons.add,
  Icons.airplanemode_active,
  Icons.train,
  Icons.bus_alert,
  Icons.phone,
  Icons.laptop_outlined
];
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Dynamic Data Handling"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: ((context, index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Column(children: [
              ListTile(
                leading: Icon(icons[index]),
                title: Text(names[index]),
              ),
              // ignore: prefer_const_constructors
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text("Dynamic List")),
            ]),
          );
        }),
      ),
    ),
  ));
}
