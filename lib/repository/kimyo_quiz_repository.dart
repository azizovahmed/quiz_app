import 'dart:math';

import 'package:quiz_app/model/quiz_model.dart';

class ChemistryQuizRepository {
  static String about =
      "Ushbu test orqali siz kimyo fanining asosiy tushunchalari, modda tuzilishi, atom va molekulalar, shuningdek kimyoviy reaksiyalar bo‘yicha bilimlaringizni sinab ko‘rasiz.";

  static String lesson = "Kimyo asoslari";

  static List<QuizModel> chemistryquiztest() {
    List<QuizModel> chemistry = [];

    chemistry.add(
      QuizModel(
        quizanswer: "Qaysi fikr noto‘g‘ri?",
        v1: "A.Atom moddaning eng kichik zarrachasidir",
        v2: "B.Molekula bir nechta atomlardan tashkil topgan",
        v3: "C.Element bir xil atomlardan iborat bo‘ladi",
        v4: "D.Atom ko‘z bilan ko‘rinadi",
        trueAnswer: "D",
      ),
    );

    chemistry.add(
      QuizModel(
        quizanswer: "Qaysi javobda kimyoviy hodisa keltirilgan?",
        v1: "A.Muzning erishi",
        v2: "B.Suvning bug‘lanishi",
        v3: "C.Temirning zanglashi",
        v4: "D.Shakarning maydalanishi",
        trueAnswer: "C",
      ),
    );

    chemistry.add(
      QuizModel(
        quizanswer: "Qaysi modda oddiy modda hisoblanadi?",
        v1: "A.Suv",
        v2: "B.Tuz",
        v3: "C.Kislorod",
        v4: "D.Ammonyak",
        trueAnswer: "C",
      ),
    );

    chemistry.add(
      QuizModel(
        quizanswer: "Qaysi fikr xato?",
        v1: "A.Kimyoviy reaksiya vaqtida yangi modda hosil bo‘ladi",
        v2: "B.Fizik hodisada moddaning tarkibi o‘zgaradi",
        v3: "C.Kimyoviy reaksiya belgilariga gaz ajralishi kiradi",
        v4: "D.Kimyoviy reaksiya issiqlik ajralishi bilan kechishi mumkin",
        trueAnswer: "B",
      ),
    );

    chemistry.add(
      QuizModel(
        quizanswer: "Qaysi javobda element nomi berilgan?",
        v1: "A.Suv",
        v2: "B.Kislorod",
        v3: "C.Karbonat angidrid",
        v4: "D.Osh tuzi",
        trueAnswer: "B",
      ),
    );

    chemistry.add(
      QuizModel(
        quizanswer: "Qaysi formula suvga tegishli?",
        v1: "A.CO₂",
        v2: "B.H₂SO₄",
        v3: "C.H₂O",
        v4: "D.NaCl",
        trueAnswer: "C",
      ),
    );

    chemistry.add(
      QuizModel(
        quizanswer: "Qaysi javobda aralashma keltirilgan?",
        v1: "A.Kislorod",
        v2: "B.Suv",
        v3: "C.Havo",
        v4: "D.Temir",
        trueAnswer: "C",
      ),
    );

    chemistry.add(
      QuizModel(
        quizanswer: "Qaysi fikr noto‘g‘ri?",
        v1: "A.Atom yadro va elektronlardan tashkil topgan",
        v2: "B.Elektron manfiy zaryadga ega",
        v3: "C.Proton manfiy zaryadlangan",
        v4: "D.Neytron zaryadsiz",
        trueAnswer: "C",
      ),
    );

    chemistry.add(
      QuizModel(
        quizanswer: "Qaysi holatda kimyoviy reaksiya sodir bo‘ladi?",
        v1: "A.Suv muzlaydi",
        v2: "B.Qog‘oz yonadi",
        v3: "C.Suv qaynaydi",
        v4: "D.Tuz eritiladi",
        trueAnswer: "B",
      ),
    );
    chemistry.add(
      QuizModel(
        quizanswer: "Qaysi holatda kimyoviy reaksiya sodir bo‘ladi?",
        v1: "A.Suv muzlaydi",
        v2: "B.Qog‘oz yonadi",
        v3: "C.Suv qaynaydi",
        v4: "D.Tuz eritiladi",
        trueAnswer: "B",
      ),
    );
    chemistry.shuffle(Random());
    return chemistry;
  }
}
