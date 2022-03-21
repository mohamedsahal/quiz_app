import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff073b4c),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                "Su'aalaha Halkaan ayee kasoo Muuqanayaan",
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Color(0xffffd166),
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 22, right: 22),
                      height: 65,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff06d6a0),
                        ),
                        onPressed: () {},
                        child: Text(
                          'True',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 22, right: 22, bottom: 22),
                      height: 65,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffef476f),
                        ),
                        onPressed: () {},
                        child: Text(
                          'False',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
