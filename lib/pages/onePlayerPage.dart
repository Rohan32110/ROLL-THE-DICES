import 'package:dices/main.dart';
import 'package:flutter/material.dart';
import 'dart:math';

MyApp main() {
  return const MyApp();
}

class OnePlayer extends StatefulWidget {
  const OnePlayer({super.key});

  @override
  State<OnePlayer> createState() => _OnePlayerState();
}

class _OnePlayerState extends State<OnePlayer> {
  int diceOneNum = 6;
  int diceTwoNum = 6;

  void stateChangeOne() {
    setState(() {
      diceOneNum = Random().nextInt(6) + 1;
    });
  }

  void stateChangeTwo() {
    setState(() {
      diceTwoNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text(
              'Dices',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondPage');
              },
              icon: const Icon(
                Icons.change_circle,
                size: 33.0,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xFF7E9B99),
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset('images/diceIcon.png'),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/homePage');
                },
                leading: Icon(Icons.home, size: 31.0),
                title: Text(
                  "H O M E",
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.5,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/onePlayer');
                },
                leading: Icon(Icons.casino, size: 31.0),
                title: Text(
                  'O N E - P L A Y E R',
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.5,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/firstPage');
                },
                leading: Icon(Icons.casino_outlined, size: 31.0),
                title: Text(
                  'T W O - P L A Y E R',
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.5,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/fourPlayer');
                },
                leading: Icon(Icons.stop_circle, size: 31.0),
                title: Text(
                  'F O U R - P L A Y E R',
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.5,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/settingsPage');
                },
                leading: Icon(Icons.settings, size: 31.0),
                title: Text(
                  'S E T T I N G S',
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          color: const Color(0xFF8DB093),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: 3.14 / 1,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0.0, 50.0, 239.0, 5.0),
                  child: Image.asset(
                    'images/playerWhite.png',
                    width: 145.0,
                    height: 145.0,
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      stateChangeOne();
                    },
                    child: Image.asset('images/dice$diceOneNum.png', scale: 3),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0.0, 50.0, 235.0, 5.0),
                child: Image.asset(
                  'images/playerWhite.png',
                  width: 145,
                  height: 145,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
