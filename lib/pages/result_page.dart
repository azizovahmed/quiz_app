import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_model.dart';
import 'package:quiz_app/pages/home_page.dart';

class ResultPage extends StatefulWidget {
  List<QuizModel> quizs;
  int trueAnswerCount;
   int timeSpent;
  List<bool>ttrueorfalse;

  ResultPage({super.key, required this.quizs,required this.timeSpent, required this.trueAnswerCount,required this.ttrueorfalse});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double foiz = 0;
  String image="";
  String title ="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    foiz = (widget.trueAnswerCount / widget.quizs.length) * 100;
    if(foiz>=90){
      image="assets/img_10.png";
      title="Zo‘r! Siz juda yaxshi tayyorlangan ekansiz. Shu darajada davom eting!";
    }else if(foiz>=70&&foiz<89){
      image ="assets/img_12.png";
      title="Yaxshi! Biroz ko‘proq mashq qilsangiz, natija yanada yaxshilanadi.";
    }else if(foiz>=50&&foiz<70){
      image ="assets/img_11.png";
      title="Natija past. Kamchiliklarni aniqlang va mashqni davom ettiring.";
    }
    print(widget.ttrueorfalse);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(70),
                          bottomLeft: Radius.circular(70),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/img_5.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.32,
                      child: Center(
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(image,fit: BoxFit.cover,)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 210),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: itemresult(
                              "assets/img_6.png",
                              "${widget.trueAnswerCount}",
                              "To'g'ri",
                            ),
                          ),
                          Expanded(
                            child: itemresult("assets/img_7.png", "${widget.quizs.length-widget.trueAnswerCount}", "Xato"),
                          ),
                          Expanded(
                            child: itemresult(
                              "assets/img_8.png",
                              "${widget.timeSpent} sekond",
                              "Vaqt",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 66,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "🔄️ Qayta urinib ko'rish",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return HomePage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 66,
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        border: Border.all(
                          width: 1,
                          color: Colors.deepOrangeAccent,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          "Bosh Saxifa",
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.only(bottom: 200, left: 30, right: 30),
              height: 220,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 20,
                    offset: Offset(5, 10),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Natija",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "$foiz%",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 70,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
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

  Widget itemresult(String image, String sonlar, String title) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(5, 10),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, height: 70, width: 70, fit: BoxFit.cover),
          SizedBox(height: 5),
          Text(
            "$sonlar",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 2),
          Text(
            title,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
