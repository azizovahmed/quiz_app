import 'package:quiz_app/model/quiz_model.dart';

class FlutterQuizRepository {
  static String about =
      "Ushbu test orqali siz Flutter frameworki, widgetlar, state boshqaruvi va mobil ilova yaratish jarayonlari bo‘yicha bilimlaringizni sinab ko‘rasiz.";

  static String lesson = "Flutter O'zgaruvchilar";

  static List<QuizModel> flutterquiztest() {
    List<QuizModel> history = [];

    history.add(
      QuizModel(
        quizanswer: "Flutter qaysi til asosida ishlaydi?",
        v1: "A.Kotlin",
        v2: "B.Dart",
        v3: "C.Java",
        v4: "D.Swift",
        trueAnswer: "B",
      ),
    );
    history.add(
      QuizModel(
        quizanswer: "setState() nima qiladi?",
        v1: "A.UI ni qayta chizadi",
        v2: "B.Ma’lumotni bazaga saqlaydi",
        v3: "C.Yangi route yaratadi",
        v4: "D.Animatsiya boshlaydi",
        trueAnswer: "A",
      ),
    );
    history.add(
      QuizModel(
        quizanswer: "pubspec.yaml fayli vazifasi nima?",
        v1: "A.Layout tuzish",
        v2: "B.State boshqarish",
        v3: "C.Dependency va assetlarni ulash",
        v4: "D.API yozish",
        trueAnswer: "B",
      ),
    );
    history.add(
      QuizModel(
        quizanswer: "Qaysi widget holatni (state) saqlay oladi?",
        v1: "A.StatelessWidget",
        v2: "B.Container",
        v3: "C.Scaffold",
        v4: "D.StatefulWidget",
        trueAnswer: "D",
      ),
    );
    history.add(
      QuizModel(
        quizanswer: "Expanded qayerda ishlatiladi?",
        v1: "A.Row yoki Column ichida",
        v2: "B.AppBar ichida",
        v3: "C.Stack ichida",
        v4: "D.MaterialApp ichida",
        trueAnswer: "A",
      ),
    );
    history.add(
      QuizModel(
        quizanswer: "Asinxron ma’lumot bilan ishlash uchun qaysi widget ishlatiladi?",
        v1: "A.StreamBuilder",
        v2: "B.FutureBuilder",
        v3: "C.Column ",
        v4: "D.Builder  ",
        trueAnswer: "B",
      ),
    );
    history.add(
      QuizModel(
        quizanswer: "Yangi sahifaga o‘tish uchun to‘g‘ri metod qaysi?",
        v1: "A.Route.push()",
        v2: "B.Screen.open()",
        v3: "C.Navigator.push()",
        v4: "D.Page.start()",
        trueAnswer: "C",
      ),
    );
    history.add(
      QuizModel(
        quizanswer: "const ishlatishning asosiy foydasi nima?",
        v1: "A.Kodni qisqartirish",
        v2: "B.Rebuildni optimallashtirish",
        v3: "C.Internet tezligini oshirish",
        v4: "D.Debugni yoqish",
        trueAnswer: "B",
      ),
    );
    history.add(
      QuizModel(
        quizanswer: "Flutter ilovasini ishga tushiruvchi funksiya qaysi?",
        v1: "A.mainApp()",
        v2: "B.start()",
        v3: "C.runApp()",
        v4: "D.createApp()",
        trueAnswer: "C",
      ),
    );
    history.add(
      QuizModel(
        quizanswer: "ListView.builder nimaga qulay?",
        v1: "A.Statik list chiqarish",
        v2: "B.Kichik UI yaratish",
        v3: "C.Katta ro‘yxatni samarali chiqarish",
        v4: "D.Theme o‘zgartirish",
        trueAnswer: "C",
      ),
    );

    return history;
  }
}
