import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_managemet/screen/home/dashboard.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 16),
      bodyPadding: EdgeInsets.all(16),
    );
    return IntroductionScreen(
      globalBackgroundColor: Color.fromARGB(229, 229, 229, 195),
      pages: [
        PageViewModel(
            title: 'Welcome To "PRORIATY"',
            body: "“Organize your life with your gorgeous proriarty”",
            image: Image.asset(
              "assets/images/logosec.png",
              width: 278,
            ),
            decoration: pageDecoration),
        PageViewModel(
            title: "To-Do",
            body: "You can start by making a list of your activities",
            image: Image.asset(
              "assets/images/Todo.png",
              width: 200,
            ),
            decoration: pageDecoration),
        PageViewModel(
            title: "Task Board",
            body: "You can keep and control your task properly with the team",
            image: Image.asset(
              "assets/images/taskboard.png",
              width: 288,
            ),
            decoration: pageDecoration,
            footer: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (builder) {
                  return DashboardScreen();
                }));
              },
              child: const Text('Get Started'),
            ))
      ],
      onDone: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (builder) {
          return DashboardScreen();
        }));
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      dotsFlex: 3,
      nextFlex: 1,
      skipOrBackFlex: 1,
      back: const Icon(Icons.arrow_back),
      skip: const Text(
        "Skip",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      next: const Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      done: const Text(
        "Done",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      dotsDecorator: const DotsDecorator(
          size: Size(12, 12),
          color: Color.fromARGB(229, 229, 220, 195),
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
    );
  }
}

