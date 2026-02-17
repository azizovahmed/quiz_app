import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_page.dart';
import 'package:quiz_app/shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children: [
                makePage(
                  "img_1.png",
                  "Har kuni o‘sish sari bir qadam.",
                  "Har kuni kichik qadamlar bilan katta natijalarga erishing.",
                ),
                makePage(
                  "img_1.png",
                  "Maqsading sari ishonch bilan harakat qil.",
                  "Bugundan boshlang va har kuni yanada yuqoriga ko‘tariling",
                ),
                makePage(
                  "img_1.png",
                  "Natijang bugundan boshlanadi.",
                  "Doimiy harakat sizni muvaffaqiyat sari yetaklaydi.",
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                SizedBox(height: 100),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildIndicator(),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: ()async {
                  await SharedPerference.storeName('name');
                    setState(() {
                      if (currentIndex == 2) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return HomePage();
                            },
                          ),
                        );
                      } else {
                        currentIndex++;
                        _pageController.jumpToPage(currentIndex);
                      }
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red.shade600,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        currentIndex != 2 ? "Keyingi" : "Boshladik",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                      return HomePage();
                    }));
                  },
                  child: Text(
                    "O'tkazib yuborish",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget makePage(String image, String title, String subtitle) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 346, child: Image.asset(image, fit: BoxFit.cover)),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w900,

            ),
          ),
          Text(
            subtitle,
            style: TextStyle(color: Colors.grey, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _indecator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      height: 10,
      width: isActive ? 30 : 10,
      decoration: BoxDecoration(
        color: Colors.yellow.shade700,
        shape: BoxShape.circle,
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i > 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indecator(true));
      } else {
        indicators.add(_indecator(false));
      }
    }
    return indicators;
  }
}
