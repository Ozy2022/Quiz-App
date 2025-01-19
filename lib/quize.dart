import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/questions_screen.dart';
import 'package:adv_basic/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //can't reassign it only edit it with a final
  List<String> selcetedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswers(String answer) {
    selcetedAnswers.add(answer);

    if (selcetedAnswers.length == questions.length) {
      setState(() {
        //selcetedAnswers = [];
        activeScreen = "results-screen";
      });
    }
  }

  void resartQuiz() {
    setState(() {
      selcetedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectedAnswer: chooseAnswers,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        choenAnswers: selcetedAnswers,
        onRestart: resartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

/*

#Passing Data via Functions Across Widgets

1- final numbers = [1,2,3]; => create & stores a list object in memory

2- numbers = [4. 5. 6]; => Tries to create a new list object and assign it to
   the variable note that does not work when using final!

3- numbers.add(4); => back to step1 wich Reaches out 
   to exiting value in memory and edits 
   internal data structure data.

 */
