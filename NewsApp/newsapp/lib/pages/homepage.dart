// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.orange,
      // ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Daily News'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text(
                "National",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/national");
                },
              ),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              title: const Text(
                "Business",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              // leading: Image.asset('sport.png'),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/business");
                },
              ),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              title: const Text(
                "Sports",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/sports");
                },
              ),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              title: const Text(
                "World",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/world");
                },
              ),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              title: const Text(
                "Politics",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/politics");
                },
              ),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              title: const Text(
                "Technology",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/technology");
                },
              ),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              title: const Text(
                "Startup",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/startup");
                },
              ),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              title: const Text(
                "Entertainment",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/entertainment");
                },
              ),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              title: const Text(
                "Miscellaneous",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/miscellaneous");
                },
              ),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              title: const Text(
                "Unconventional",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/unconventional");
                },
              ),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              title: const Text(
                "Science",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/science");
                },
              ),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              title: const Text(
                "Auto Mobile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                elevation: 5.0,
                child: const Text("READ"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/automobile");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
