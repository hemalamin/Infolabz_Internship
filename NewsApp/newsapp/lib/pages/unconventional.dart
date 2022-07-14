// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, deprecated_member_use

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'homepage.dart';

class UnconventionalNewsPage extends StatefulWidget {
  const UnconventionalNewsPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UnconventionalNewsPageState createState() => _UnconventionalNewsPageState();
}

class _UnconventionalNewsPageState extends State<UnconventionalNewsPage> {
  String? data;
  var news_length;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response = await http
        .get(Uri.parse("https://inshorts.deta.dev/news?category=hatke"));
    if (response.statusCode == 200) {
      data = response.body;
      setState(() {
        news_length = jsonDecode(data!)['data'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Hatke News"),
            leading: RaisedButton(
              color: Colors.blue,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Icon(Icons.arrow_back),
            )),
        body: ListView.builder(
          itemCount: news_length == null ? 0 : news_length.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                    child: Image.network(
                      jsonDecode(data!)['data'][index]['imageUrl'],
                      fit: BoxFit.cover,
                      height: 300,
                      width: double.infinity,
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: ListTile(
                      title: const Icon(Icons.share),
                      contentPadding: const EdgeInsets.all(15.0),
                      minVerticalPadding: 20.0,
                      leading: Text(jsonDecode(data!)['data'][index]['title']),
                      trailing: const Icon(Icons.favorite_border),
                    ),
                  ),
                  const Divider(
                    height: 0.9,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(jsonDecode(data!)['data'][index]['content']),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      RaisedButton(
                          padding: const EdgeInsets.all(15.0),
                          color: Colors.blue,
                          onPressed: () {},
                          child: const Text("Read more")),
                      RaisedButton(
                          padding: const EdgeInsets.all(15.0),
                          color: Colors.blue,
                          onPressed: () {},
                          child: const Text("View Image")),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
