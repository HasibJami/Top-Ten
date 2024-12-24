import 'package:ass11/componenets/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TopTenApp());
}

class TopTenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Top Ten App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}