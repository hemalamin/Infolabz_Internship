import 'dart:convert';
import 'package:flutter/material.dart';
//http is for fetching data from api
import 'package:http/http.dart' as http;

class GetBTC extends StatefulWidget {
  const GetBTC({Key? key}) : super(key: key);

  @override
  State<GetBTC> createState() => _GetBTCState();
}

class _GetBTCState extends State<GetBTC> {
  bool isTaxi = false;
  bool isShop = false;
  bool isHome = false;
  bool isFloatingButton = false;
  bool isUser = false;
  bool isShoping = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          //App Bar with orange color
          appBar: AppBar(
            title: const Text("INTERNSHIP"),
            backgroundColor: Colors.orange,
            actions: [
              MaterialButton(
                  child: const Icon(Icons.people_alt),
                  onPressed: () {
                    isUser = true;
                  }),
              MaterialButton(
                  child: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    isShoping = true;
                  })
            ],
          ),
          //Create FloatingActionButton
          floatingActionButton: FloatingActionButton(
            child: const Icon(
              Icons.add,
              color: Colors.orange,
            ),
            onPressed: () {
              isFloatingButton = true;
            },
          ),
          //bottom Navigaton Bar
          bottomNavigationBar: NavigationBar(
            destinations: [
              GestureDetector(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Icon(Icons.home), Text('Home')],
                ),
                onTap: () {
                  isHome = true;
                },
              ),
              GestureDetector(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [const Icon(Icons.local_taxi), const Text('Taxi')],
                ),
                onTap: () {},
              ),
              GestureDetector(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Icon(Icons.shop), Text('Shop')],
                ),
                onTap: () {
                  isShop = true;
                },
              ),
            ],
          ),
          //Body which contains BTC price
          body: Center(
            child: FutureBuilder<double>(
              future: getBTCUSDPrice(),
              builder: (context, snapshot) {
                //while data (btc price) has not come show progress bar
                if (!snapshot.hasData) return const CircularProgressIndicator();

                double price = snapshot.data!;
                return isShop
                    ? const Text("Shop Button Pressed")
                    : Text("BTC : $price USD",
                        style: const TextStyle(fontSize: 22));
              },
            ),
          )),
    );
  }
}

Future<double> getBTCUSDPrice() async {
  try {
    String url = 'https://api.coindesk.com/v1/bpi/currentprice.json';
    http.Response response = await http.get(Uri.parse(url));

    //this list variable will Contains key-values pairs (Map Object)
    //which is 4 pairs in our case (4 - Main Keys)
    final list = json.decode(response.body);
    print("Pairs Count: ${list.length}");

    //Now, We are interested in finding BTC price
    //and for that main key is 'bpi' so,lets pick that one

    double price = list['bpi']['USD']['rate_float'];
    print("price: $price");

    return price;
  } catch (e) {
    print(e.toString());
    return -1;
  }
}
