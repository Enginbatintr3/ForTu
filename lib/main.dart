import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Fortune Teller App",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
