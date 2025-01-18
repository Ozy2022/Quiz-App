import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.choenAnswers,
  });

  final List<String> choenAnswers;

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
