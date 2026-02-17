import 'package:quiz_app/model/quiz_model.dart';

class HistoryQuizRepository {
  static String about =
      "Ushbu test orqali siz XX asr tarixini, xususan O‘zbekiston SSR davridagi siyosiy va ijtimoiy jarayonlarni qanchalik yaxshi bilishingizni sinab ko‘rasiz.";

  static String lesson = "O'zbekiston SSSR";

  static List<QuizModel> historyquiztest() {
    List<QuizModel> history = [];

    history.add(
      QuizModel(
        quizanswer: "Qaysi javobda tarixiy xatoga yo‘l qo‘yilgan?",
        v1: "A.baliqchilik, chorvachilik va dehqonchilikka qaraganda qadimgiroq mashg‘ulotdir",
        v2: "B.ovchilik, terimchilik va baliqchilik bir paytda paydo bo‘lgan",
        v3: "C.chorvachilik ovchilik asosida hayvonlarni xonakilashtirish zamirida paydo bo‘ldi",
        v4: "D.chorvachilik va dehqonchilik bir vaqtda paydo bo‘ldi",
        trueAnswer: "A",
      ),
    );
    history.add(
      QuizModel(
        quizanswer: "Qaysi javobda tarixiy xatoga yo‘l qo‘yilgan?",
        v1: "A.Ibtidoiy odamlar dastlab tosh qurollardan foydalangan",
        v2: "B.Mis davri temir davridan keyin kelgan",
        v3: "C.Olovdan foydalanish inson taraqqiyotida muhim ahamiyat kasb etgan",
        v4: "D.Qadimgi odamlar dastlab tabiat ne’matlarini tayyor holda iste’mol qilgan",
        trueAnswer: "B",
      ),
    );

    history.add(
      QuizModel(
        quizanswer: "Qaysi javob noto‘g‘ri?",
        v1: "A.Neolit davrida kulolchilik rivojlandi",
        v2: "B.Bronza davrida temir keng ishlatilgan",
        v3: "C.Ibtidoiy jamoa tuzumi eng uzoq davom etgan tuzumdir",
        v4: "D.Dehqonchilik neolit davrida shakllandi",
        trueAnswer: "B",
      ),
    );

    history.add(
      QuizModel(
        quizanswer: "Qaysi fikrda xatolik mavjud?",
        v1: "A.Temir davri bronza davridan keyin boshlangan",
        v2: "B.Ilk shaharlar Mesopotamiyada paydo bo‘lgan",
        v3: "C.Odamzod dastlab metall qurollar yasagan",
        v4: "D.Ovchilik ibtidoiy odamlarning asosiy mashg‘uloti bo‘lgan",
        trueAnswer: "C",
      ),
    );

    history.add(
      QuizModel(
        quizanswer: "Qaysi javob tarixiy jihatdan noto‘g‘ri?",
        v1: "A.Qadimgi Misr Nil daryosi bo‘yida joylashgan",
        v2: "B.Xitoyda ipakchilik qadimdan rivojlangan",
        v3: "C.Rim imperiyasi miloddan avvalgi XX asrda tashkil topgan",
        v4: "D.Mesopotamiya Dajla va Furot oralig‘ida joylashgan",
        trueAnswer: "C",
      ),
    );

    history.add(
      QuizModel(
        quizanswer: "Qaysi fikr noto‘g‘ri?",
        v1: "A.Bronza mis va qalay aralashmasidan hosil bo‘ladi",
        v2: "B.Temir davrida mehnat qurollari mustahkamroq bo‘lgan",
        v3: "C.Paleolit davrida dehqonchilik rivojlangan",
        v4: "D.Ibtidoiy odamlar g‘orlarda yashagan",
        trueAnswer: "C",
      ),
    );

    history.add(
      QuizModel(
        quizanswer: "Qaysi javobda xatolik bor?",
        v1: "A.Qadimgi Yunoniston demokratiya vatani hisoblanadi",
        v2: "B.Qadimgi Rim respublika bo‘lib ham yashagan",
        v3: "C.Qadimgi Misr aholisi asosan dengizchilik bilan shug‘ullangan",
        v4: "D.Shahar-davlatlar Yunonistonda keng tarqalgan",
        trueAnswer: "C",
      ),
    );

    history.add(
      QuizModel(
        quizanswer: "Qaysi javob noto‘g‘ri?",
        v1: "A.Neolit davri yangi tosh davri deb ataladi",
        v2: "B.Paleolit davri eng qadimgi tosh davridir",
        v3: "C.Bronza davrida odamlar yozuvni ixtiro qilgan",
        v4: "D.Ibtidoiy odamlar dastlab jamoa bo‘lib yashagan",
        trueAnswer: "C",
      ),
    );

    history.add(
      QuizModel(
        quizanswer: "Qaysi fikrda tarixiy xato bor?",
        v1: "A.Dehqonchilik insoniyat hayotida tub burilish yasagan",
        v2: "B.Ovchilik chorvachilikdan keyin paydo bo‘lgan",
        v3: "C.Metallga ishlov berish taraqqiyotni tezlashtirgan",
        v4: "D.Ilk odamlar tabiatga qaram bo‘lgan",
        trueAnswer: "B",
      ),
    );
    history.add(
      QuizModel(
        quizanswer: "Qaysi fikrda tarixiy xato bor?",
        v1: "A.Dehqonchilik insoniyat hayotida tub burilish yasagan",
        v2: "B.Ovchilik chorvachilikdan keyin paydo bo‘lgan",
        v3: "C.Metallga ishlov berish taraqqiyotni tezlashtirgan",
        v4: "D.Ilk odamlar tabiatga qaram bo‘lgan",
        trueAnswer: "B",
      ),
    );

    return history;
  }
}
