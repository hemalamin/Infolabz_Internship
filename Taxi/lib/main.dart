import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Taxi App"),
            backgroundColor: Colors.orange,
          ),
          floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: Icon(Icons.local_taxi),
            backgroundColor: Colors.orange,
            onPressed: () {
              // isPressed = true;
              setState(() {
                isPressed = true;
              });
            },
          ),
          body: Center(
            child: isPressed
                ? const Text(
                    "Taxi is not available right now",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                : const Text(
                    "Welcome to taxi service",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
          ),
        ));
  }
}
