import 'package:adv_basic/data/questions.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.choenAnswers,
  });

  final List<String> choenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out of Y questions correctly!'),
            SizedBox(
              height: 30,
            ),
            Text('List of answers and questions...'),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Qize!'),
            )
          ],
        ),
      ),
    );
  }
}
