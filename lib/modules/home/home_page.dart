import 'package:flutter/material.dart';
import 'package:flutter_movie/modules/home/components/home_header.dart';
import 'package:flutter_movie/modules/home/components/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          // Header
          HomeHeader(size: size),
          // Search Bar
          SearchBar(size: size),
          // Categories Bar
          SizedBox(
            height: size.height / 15,
          )
        ],
      ),
    ));
  }
}
