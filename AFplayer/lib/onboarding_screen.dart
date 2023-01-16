import 'package:flutter/material.dart';
import 'package:flutter_application_1/intro_screens/intro_page1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'home_page.dart';
import 'intro_screens/intro_page2.dart';
import 'intro_screens/intro_page3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool onlastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onlastPage = (index == 3);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.60),
            child: SmoothPageIndicator(
              controller: _controller,
              effect: const WormEffect(
                dotHeight: 16,
                dotColor: Color(0x44ffffff),
                activeDotColor: Colors.white,
                dotWidth: 16,
                type: WormType.thin,
              ),
              count: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 80, 40, 0),
            child: Container(
              alignment: Alignment.topRight,
              child: onlastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "Start",
                        style:
                            TextStyle(color: Color(0xccffffff), fontSize: 18),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(3);
                      },
                      child: const Text(
                        "Skip",
                        style:
                            TextStyle(color: Color(0xccffffff), fontSize: 18),
                      ),
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 80),
            child: Container(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 60,
                child: onlastPage
                    ? GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text(
                          "",
                          style:
                              TextStyle(color: Color(0xccffffff), fontSize: 18),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text(
                          "Next",
                          style:
                              TextStyle(color: Color(0xccffffff), fontSize: 18),
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
