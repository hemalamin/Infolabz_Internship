import 'package:flutter/material.dart';
import 'package:newsapp/pages/automobiel.dart';
import 'package:newsapp/pages/business.dart';
import 'package:newsapp/pages/entertainment.dart';
import 'package:newsapp/pages/homepage.dart';
import 'package:newsapp/pages/miscellaneous.dart';
import 'package:newsapp/pages/national.dart';
import 'package:newsapp/pages/politicsnews.dart';
import 'package:newsapp/pages/sciencenews.dart';
import 'package:newsapp/pages/sportsnews.dart';
import 'package:newsapp/pages/startup.dart';
import 'package:newsapp/pages/technologynews.dart';
import 'package:newsapp/pages/unconventional.dart';
import 'package:newsapp/pages/worldnews.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatefulWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News",
      home: const HomePage(),
      routes: {
        "/national": (context) => const NationalNewsPage(),
        "/business": (context) => const BusinessNewsPage(),
        "/sports": (context) => const SportNewsPage(),
        "/world": (context) => const WorldNewsPage(),
        "/politics": (context) => const PoliticsNewsPage(),
        "/technology": (context) => const TechnologyNewsPage(),
        "/startup": (context) => const StartupNewsPage(),
        "/entertainment": (context) => const EntertainmentNewsPage(),
        "/miscellaneous": (context) => const MiscellaneousNewsPage(),
        "/unconventional": (context) => const UnconventionalNewsPage(),
        "/science": (context) => const ScienceNewsPage(),
        "/automobile": (context) => const AutomobileNewsPage(),
      },
    ));
  }
}
