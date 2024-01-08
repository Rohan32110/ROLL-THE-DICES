import 'package:dices/pages/firstPage.dart';
import 'package:dices/pages/fourPlayerPage.dart';
import 'package:dices/pages/homePage.dart';
import 'package:dices/pages/onePlayerPage.dart';
import 'package:dices/pages/secondPage.dart';
import 'package:dices/pages/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/homePage': (context) => HomePage(),
        '/onePlayer': (context) => OnePlayer(),
        '/firstPage': (context) => FirstPage(),
        '/fourPlayer': (context) => FourPlayer(),
        '/secondPage': (context) => SecondPage(),
        '/settingsPage': (context) => SettingsPage(),
      },
    );
  }
}
