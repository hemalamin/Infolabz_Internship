//convert is used to convert json data to map object
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/btc.dart';
//http is for fetching data from api
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetBTC();
  }
}
