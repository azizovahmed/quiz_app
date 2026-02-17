import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/pages/home_page.dart';
import 'package:quiz_app/shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'intro_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> Resgister() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('name');

    Future.delayed(Duration(seconds: 3), () {
      if (name != null) {

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
      } else {
        // Aks holda -> IntroPage
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => IntroPage()));
      }
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Resgister();
    Timer(Duration(seconds: 15),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
        return IntroPage();
      }));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            colors: [
              Colors.red.shade100,
              Colors.red.shade50,
              Colors.white70,
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset("img.png",height: 200,width: 200,fit: BoxFit.cover,),
                Text("QuizPro",style: TextStyle(color: Colors.red,fontSize: 50,fontWeight: FontWeight.w900),)
              ]),
            ),
            SizedBox(height: 160,child: Lottie.asset("qush.json"),),
          ],
        ),
      ),
    );
  }
}
