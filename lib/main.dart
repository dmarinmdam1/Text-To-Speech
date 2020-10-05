import 'package:flutter/material.dart';
import 'MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text To Speech',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF880E4F, color),
      ),
      home: MyHomePage(title: 'Conversor de texto a voz'),
    );
  }

  final Map<int, Color> color = {
    50: Color.fromRGBO(255, 0, 255, .1),
    100: Color.fromRGBO(255, 0, 255, .2),
    200: Color.fromRGBO(255, 0, 255, .3),
    300: Color.fromRGBO(255, 0, 255, .4),
    400: Color.fromRGBO(255, 0, 255, .5),
    500: Color.fromRGBO(255, 0, 255, .6),
    600: Color.fromRGBO(255, 0, 255, .7),
    700: Color.fromRGBO(255, 0, 255, .8),
    800: Color.fromRGBO(255, 0, 255, .9),
    900: Color.fromRGBO(255, 0, 255, 1),
  };
}
