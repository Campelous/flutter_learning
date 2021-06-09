import 'package:dio_example/modules/home/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        primaryColor: Colors.yellow[900],
      ),
      home: HomePage(),
    );
  }
}