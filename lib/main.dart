import 'package:flutter/material.dart';
import 'package:quiz_app_screen/screens/home_page.dart';

void main() {
  runApp(const QuizAppScreen());
}

class QuizAppScreen extends StatelessWidget {
  const QuizAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App Screen',
      home: HomePage(),
    );
  }
}
