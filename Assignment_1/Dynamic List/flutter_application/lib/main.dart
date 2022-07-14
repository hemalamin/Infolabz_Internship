// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("List Generation"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(Icons.add),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             title: Text("Doctor Booking"),
//             leading: Icon(Icons.add_box),
//           ),
//           Divider(
//             height: 0.3,
//           ),
//           ListTile(title: Text("Flight Booking"), leading: Icon(Icons.flight)),
//           Divider(
//             height: 0.3,
//           ),
//           ListTile(
//             title: Text("Train Booking"),
//             leading: Icon(Icons.train),
//           ),
//           Divider(
//             height: 0.3,
//           ),
//           ListTile(
//             title: Text("Auto Booking"),
//             leading: Icon(Icons.auto_awesome),
//           )
//         ],
//       ),
//     ),
//   ));
// }
/*************************************************************************************************************************************/

//convert is used to convert json data to map object
import 'dart:convert';
import 'package:flutter/material.dart';
//http is for fetching data from api
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day 5',
      home: Scaffold(
          //App Bar with orange color
          appBar: AppBar(
            title: Text("INTERNSHIP"),
            backgroundColor: Colors.orange,
            actions: [
              MaterialButton(
                  child: Icon(Icons.people_alt),
                  onPressed: () {
                    print('User Icon Pressed');
                  }),
              MaterialButton(
                  child: Icon(Icons.shopping_cart),
                  onPressed: () {
                    print('Cart Icon Pressed');
                  })
            ],
          ),
          //Create FloatingActionButton
          floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: Colors.orange,
            ),
            onPressed: () {
              print('floating action button clicked');
            },
          ),

          //Create a Drawer Menu
          // drawer: Drawer(
          //   backgroundColor: Colors.orange.shade100,
          //   child: Column(
          //     children: [
          //       Image.network(
          //           'https://images.unsplash.com/photo-1655972670403-243839675e06?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
          //       Text('Name : Alice Taxes'),
          //       Text("Age : 50 years"),
          //       Text("Hobby : Cricket"),
          //       Text("Weight : 69 kg"),
          //       Text("Address : Los Angeles")
          //     ],
          //   ),
          // ),
          //bottom Navigaton Bar
          bottomNavigationBar: NavigationBar(
            destinations: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Icon(Icons.home), Text('Home')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Icon(Icons.local_taxi), Text('Taxi')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Icon(Icons.shop), Text('Shop')],
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
                return Text("BTC : $price USD",
                    style: const TextStyle(fontSize: 22));
              },
            ),
          )),
    );
  }
}

//This Function fetch api data and returns  price of btc in usd
Future<double> getBTCUSDPrice() async {
  try {
    String url = 'https://api.coindesk.com/v1/bpi/currentprice.json';
    http.Response response = await http.get(Uri.parse(url));

    //this list variable will Contains key-values pairs (Map Object)
    //which is 4 pairs in our case (4 - Main Keys)
    final list = json.decode(response.body);
    // ignore: avoid_print
    print("Pairs Count: ${list.length}");

    //Now, We are interested in finding BTC price
    //and for that main key is 'bpi' so,lets pick that one

    double price = list['bpi']['USD']['rate_float'];
    // ignore: avoid_print
    print("price: $price");

    return price;
  } catch (e) {
    // ignore: avoid_print
    print(e.toString());
    return -1;
  }
}
