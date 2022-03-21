import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

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
  List<question> questions = [
    question(
        q: "Muslims believe that Muhammad was one of many prophets.", a: true),
    question(
        q: "After Muhammad started receiving revelations, his preaching was immediately welcomed by most of the people of Mecca.",
        a: false),
    question(
        q: "The hijra is the term for the migration of Muhammad and his followers from Mecca to Cairo.",
        a: false),
    question(q: "The language of the Qur'an is Arabic.", a: true),
    question(
        q: "There is only one source of Islamic law—the Sunnah.", a: false),
    question(q: "It is the goal of Sufis to become prophets.", a: false),
    question(q: "Muslims believe in the coming Day of Judgment.", a: true),
    question(
        q: "All Muslims today believe that polygamy is ideal marriage.",
        a: false),
    question(
        q: "During the month of Ramadan, devout Muslims make the pilgrimage to Mecca.",
        a: false),
    question(
        q: "One of the Five Pillars is the duty of able Muslims to make the pilgrimage to Baghdad.",
        a: false),
    question(
        q: "There are many sources of shari'ah, including the Qur'an and the Sunnah.",
        a: true),
    question(
        q: "During the miraj, or Night Journey, Muhammad ascended to heaven and came into the presence of God.",
        a: true),
    question(q: "Islamic law is no longer used in the world today.", a: false),
    question(
        q: "Muslims reformers in the modern period were not concerned about European colonialism.",
        a: false),
    question(
        q: "Most African-American Muslims belong to the Nation of Islam.",
        a: false),
  ];
  int questionindex = 0;
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
                questions[questionindex].questionName!,
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
                        onPressed: () {
                          final isTrue =
                              questions[questionindex].questionAnswer;
                          setState(() {
                            if (questionindex < questions.length - 1)
                              questionindex++;
                          });
                          if (isTrue == true) {
                            print('Waa Saxday');
                          } else {
                            print('Waa khaladay');
                          }
                        },
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
                        onPressed: () {
                          final isTrue =
                              questions[questionindex].questionAnswer;
                          setState(() {
                            if (questionindex < questions.length - 1)
                              questionindex++;
                          });
                          if (isTrue == true) {
                            print('Waa Saxday');
                          } else {
                            print('Waa khaladay');
                          }
                        },
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
