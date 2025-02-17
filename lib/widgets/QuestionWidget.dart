import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionWidget extends StatelessWidget {
  final Question question;
  final VoidCallback onAnswered;

  QuestionWidget({required this.question, required this.onAnswered});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.text,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: onAnswered,
          child: Text('Answer'),
        ),
      ],
    );
  }
}