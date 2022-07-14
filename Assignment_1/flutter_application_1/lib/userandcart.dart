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
      drawer: Drawer(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Inofzlab"),
              accountEmail: Text("infozlab@gmail.com"),
              currentAccountPicture:
                  CircleAvatar(backgroundColor: Colors.amber),
            ),
            const ListTile(
              title: Text("All mails"),
              leading: Icon(Icons.mail),
            ),
            const Divider(
              height: 0.3,
            ),
            // ignore: prefer_const_constructors
            ListTile(
              title: Text("Accounts"),
              leading: Icon(Icons.account_box),
            ),
            const Divider(
              height: 0.3,
            ),
            const ListTile(
              title: Text("redeem"),
              leading: Icon(Icons.redeem),
            ),
            const Divider(
              height: 0.3,
            ),
            // ignore: prefer_const_constructors
            ListTile(
              title: const Text("Security"),
              leading: const Icon(Icons.verified_user),
            ),
            const Divider(
              height: 0.3,
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Search"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Setting")
        ],
        onTap: (int index) {
          if (index == 0) {
            // ignore: avoid_print
            print("Home Clicked");
          } else if (index == 1) {
            // ignore: avoid_print
            print("Search Clicked");
          } else if (index == 3) {
            // ignore: avoid_print
            print("Setting Clicked");
          }
        },
      ),
    ),
  ));
}
