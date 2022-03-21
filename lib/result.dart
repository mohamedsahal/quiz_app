import 'package:flutter/material.dart';

class result extends StatelessWidget {
  result({Key? key, required this.answer, required this.falses})
      : super(key: key);
  final int answer;
  final int falses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff073b4c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Correct Answers $answer',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            Text(
              'Wrong Answers $falses',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.red,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
