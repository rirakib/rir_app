import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash.dart';


void main() {
  runApp(const Home());
}
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      home: Splash(),
      theme: ThemeData.dark(),
    );
  }
}