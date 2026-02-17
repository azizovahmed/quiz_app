import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_model.dart';
import 'package:quiz_app/pages/result_page.dart';
import 'package:quiz_app/widget/selected_item_test.dart';

// ignore: must_be_immutable
class QuizPage extends StatefulWidget {
  List<QuizModel> tests;

  final String title;

  QuizPage({super.key, required this.tests, required this.title}) {}

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int expendedValue = 1;
  int currentQuistionIndex = 0;
  int duration = 21;
  final CountDownController _countDownController = CountDownController();
  String selectedVariant = "";
  int trueAnswerCount = 0;
  List<bool>trueorfalse=[];

  late DateTime startTime;


  @override
  void initState() {
    super.initState();
    startTime = DateTime.now(); // test boshlanish vaqti
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: CircularCountDownTimer(
              duration: duration,
              initialDuration: 0,
              controller: _countDownController,
              height: 45,
              width: 45,
              ringColor: Colors.grey[300]!,
              ringGradient: null,
              fillColor: Colors.red.shade700,
              fillGradient: null,

              backgroundGradient: null,
              strokeWidth: 4.0,
              strokeCap: StrokeCap.round,
              textStyle: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              textFormat: CountdownTextFormat.S,
              isReverse: true,
              isReverseAnimation: true,
              isTimerTextShown: true,
              autoStart: true,
              onComplete: () {
                setState(() {
                  DateTime endTime = DateTime.now();

                  Duration difference = endTime.difference(startTime);

                  int seconds = difference.inSeconds;
                  if (currentQuistionIndex < 9) {
                    expendedValue++;
                    _countDownController.restart();
                    currentQuistionIndex++;
                    selectedVariant = "";
                    trueorfalse.add(false);
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return ResultPage(quizs: widget.tests, trueAnswerCount: trueAnswerCount, ttrueorfalse: trueorfalse, timeSpent: seconds,);
                        },
                      ),
                    );
                  }
                });
              },
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jarayon",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "$expendedValue/10",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: expendedValue,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Expanded(child: Container(), flex: 10 - expendedValue),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    widget.tests[expendedValue - 1].quizanswer,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  SelectedItemTest(
                    variant: widget.tests[expendedValue - 1].v1,
                    onTap: () {
                      setState(() {
                        selectedVariant = "A";
                      });
                    },
                    isSelected: selectedVariant == "A",
                  ),
                  SelectedItemTest(
                    variant: widget.tests[expendedValue - 1].v2,
                    onTap: () {
                      setState(() {
                        selectedVariant = "B";
                      });
                    },
                    isSelected: selectedVariant == "B",
                  ),
                  SelectedItemTest(
                    variant: widget.tests[expendedValue - 1].v3,
                    onTap: () {
                      setState(() {
                        selectedVariant = "C";
                      });
                    },
                    isSelected: selectedVariant == "C",
                  ),
                  SelectedItemTest(
                    variant: widget.tests[expendedValue - 1].v4,
                    onTap: () {
                      setState(() {
                        selectedVariant = "D";
                      });
                    },
                    isSelected: selectedVariant == "D",
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  DateTime endTime = DateTime.now();

                  Duration difference = endTime.difference(startTime);

                  int seconds = difference.inSeconds;
                  if (selectedVariant == "") return;
                  if(selectedVariant==widget.tests[expendedValue - 1].trueAnswer){
                    trueAnswerCount++;
                    trueorfalse.add(true);
                  }else{
                    trueorfalse.add(false);
                  }
                  if (currentQuistionIndex < 9) {

                    expendedValue++;
                    selectedVariant = "";
                    currentQuistionIndex++;
                    _countDownController.restart();
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return ResultPage(quizs: widget.tests, trueAnswerCount: trueAnswerCount, ttrueorfalse: trueorfalse, timeSpent: seconds,);
                        },
                      ),
                    );
                  }
                });
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Keyingi ▶️",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
