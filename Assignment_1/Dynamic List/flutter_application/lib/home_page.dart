// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? data;
  // ignore: prefer_typing_uninitialized_variables
  var news_length;
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response = await http
        .get(Uri.parse("https://inshorts.deta.dev/news?category=sports"));
    if (response.statusCode == 200) {
      data = response.body; //store response as string
      setState(() {
        news_length = jsonDecode(data!)[
            'data']; //get all the data from json string superheros// just printed length of data
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Http Example"),
      ),
      body: ListView.builder(
        itemCount: news_length == null ? 0 : news_length.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.newspaper),
                    title: Text(
                      jsonDecode(data!)['data'][index]['title'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Divider(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      jsonDecode(data!)['data'][index]['content'],
                    ),
                  ),
                  const Divider(
                    height: 10,
                  ),
                  Image.network(jsonDecode(data!)['data'][index]['imageUrl'],
                      fit: BoxFit.fill,
                      width: double.maxFinite,
                      alignment: Alignment.center),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
