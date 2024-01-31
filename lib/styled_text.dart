import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({required this.text, super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 28, color: Color.fromARGB(255, 222, 214, 7)),
    );
  }
}
