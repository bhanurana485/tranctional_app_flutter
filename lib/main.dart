import 'package:flutter/material.dart';
import 'package:third_ui/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.white,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      home: HomeScreen(),
    );
  }
}