import 'package:flutter/material.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'montserrat',
        scaffoldBackgroundColor: DarkTheme.darkerBackground,
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: DarkTheme.white, displayColor: DarkTheme.white),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
