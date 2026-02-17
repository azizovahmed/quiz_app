import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_model.dart';
import 'package:quiz_app/pages/quiz_info_page.dart' show QuizInfoPage;
import 'package:quiz_app/repository/flutter_quiz_repository.dart';
import 'package:quiz_app/repository/history_quiz_repository.dart';
import 'package:quiz_app/repository/kimyo_quiz_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String about_history = HistoryQuizRepository.about;
  String about_flutter = FlutterQuizRepository.about;
  String about_chemistry = ChemistryQuizRepository.about;
  String lesson_history = HistoryQuizRepository.lesson;
  String lesson_flutter = FlutterQuizRepository.lesson;
  String lesson_kimyo = ChemistryQuizRepository.lesson;
  List<QuizModel> tests = HistoryQuizRepository.historyquiztest();
  List<QuizModel> flutter_tests = FlutterQuizRepository.flutterquiztest();
  List<QuizModel> kimyo_tests = ChemistryQuizRepository.chemistryquiztest();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Xush Kelibsiz",
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "Salom foydalanuvchi👋",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          SizedBox(
            height: 400,
            width: 120,
            child: Icon(Icons.account_circle, size: 60, color: Colors.red),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          itemTestContainer(
            "assets/img_2.png",
            "Qiyin",
            "O'zbekiston Tarixi",
            tests.length,
            about_history,
            lesson_history,
            tests,
          ),
          itemTestContainer(
            "assets/img_3.png",
            "Oson",
            "Flutter Asoslari",
            flutter_tests.length,
            about_flutter,
            lesson_flutter,
              flutter_tests,
          ),
          itemTestContainer(
            "assets/img_4.png",
            "O'rtacha",
            "Kimyo Testi",
            10,
            about_chemistry,
            lesson_kimyo,
            kimyo_tests
          ),
        ],
      ),
    );
  }

  Widget itemTestContainer(String image,
      String level,
      String title,
      int counttest,
      String about,
      String lesson,
      List<QuizModel>tests,
      ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: Offset(2.0, 2.0),
          ),
        ],

        borderRadius: BorderRadius.circular(25),
      ),
      margin: EdgeInsets.all(12),
      height: 310,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        level,
                        style: TextStyle(
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [Icon(Icons.help_outline, color: Colors.red)],
                      ),
                      Text(
                        "${counttest.toString()} savol",
                        style: TextStyle(
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                          Icon(Icons.access_time_filled, color: Colors.red),
                        ],
                      ),
                      Text(
                        "${counttest.toString()} savol",
                        style: TextStyle(
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 6),
                    ],
                  ),
                  SizedBox(height: 6),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return QuizInfoPage(
                              image: image,
                              title: title,
                              about: about,
                              lesson: lesson,
                              quizs: tests,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Boshladik ➡️",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
