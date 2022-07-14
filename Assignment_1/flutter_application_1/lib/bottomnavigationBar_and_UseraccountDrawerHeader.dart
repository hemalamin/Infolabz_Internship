import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.amber),
    home: Scaffold(
      appBar: AppBar(
        title: const Text("User account header"),
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
                accountName: Text('Flutter'),
                accountEmail: Text('flutter@yahoo.com')),
            ListTile(
                leading: Icon(Icons.people_alt_rounded),
                title: Text('All Accounts')),
            ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text('Email'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Bookmarks'),
        ],
      ),
      body: const Center(
        child: Text('This Is Body.'),
      ),
    ),
  ));
}
