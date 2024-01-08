import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xDA7B9A79),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 130.0),
                Image.asset('images/diceIcon.png', height: 177.0, width: 177.0),
                SizedBox(height: 35.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'R O L L',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF36362F),
                      ),
                    ),
                    Text(
                      '   T H E',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '   D I C E S',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF36362F),
                      ),
                    ),
                  ],
                ),
                Text(
                  '________________________________',
                  style: TextStyle(
                    color: Color(0xD9F1EDED),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 70.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF312C2C)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFDF9F9FF)),
                    fixedSize: MaterialStateProperty.all(Size(230.0, 43.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/onePlayer');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.casino),
                      Text(
                        'O N E - P L A Y E R',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.5),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF312C2C)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFDF9F9FF)),
                    fixedSize: MaterialStateProperty.all(Size(230.0, 43.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/firstPage');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.casino_outlined),
                      Text(
                        'T W O - P L A Y E R',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.5),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF312C2C)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFDF9F9FF)),
                    fixedSize: MaterialStateProperty.all(Size(230.0, 43.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/fourPlayer');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.stop_circle),
                      Text(
                        'F O U R - P L A Y E R',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.5),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF312C2C)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFDF9F9FF)),
                    fixedSize: MaterialStateProperty.all(Size(230.0, 43.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/settingsPage');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings),
                      Text(
                        'S E T T I N G S',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
