import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

String handleButtons(String text, String userInput) {
  if (text == 'AC') {
    userInput = '';
    return '0';
  } else if (text == 'C') {
    if (userInput.isNotEmpty) {
      userInput = userInput.substring(0, userInput.length - 1);
    }
  } else if (text == '=') {
    String result = calculate(userInput);
    userInput = result;
    if (userInput.endsWith('.0')) {
      userInput = userInput.replaceAll('.0', '');
    }
  } else {
    userInput += text;
  }
  return userInput;
}

String calculate(String userInput) {
  try {
    var exp = Parser().parse(userInput);
    var evaluation = exp.evaluate(EvaluationType.REAL, ContextModel());
    return evaluation.toString();
  } catch (e) {
    return "Error";
  }
}

Color getBgColor(String text) {
  if (text == 'AC') {
    return Color.fromARGB(255, 252, 100, 100);
  } else if (text == '=') {
    return Color.fromARGB(255, 104, 204, 159);
  } else if (text == 'C') {
    return Color.fromARGB(255, 252, 100, 100);
  } else {
    return Color(0xFF1d2630);
  }
}

Color getColor(String text) {
  if (text == '/' ||
      text == '*' ||
      text == '+' ||
      text == '-' ||
      text == '=' ||
      text == '(' ||
      text == ')') {
    return Color.fromARGB(255, 252, 100, 100);
  } else {
    return Colors.white;
  }
}
