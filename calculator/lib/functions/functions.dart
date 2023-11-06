import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

String userInput = '';
String result = '0';

getColor(String text) {
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
} // got return value, cannot use void function

getBgColor(String text) {
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

handleButtons(String text) {
  if (text == 'AC') {
    userInput = '';
    result = '0';
    return;
  } else if (text == 'C') {
    if (userInput.isNotEmpty) {
      userInput = userInput.substring(0, userInput.length - 1);
      return;
    } else {
      return null;
    }
  }

  if (text == '=') {
    result = calculate();
    userInput = result;

    if (userInput.endsWith('.0')) {
      userInput = userInput.replaceAll('.0', '');
      return;
    }
  }

  userInput = userInput + text;
}

String calculate() {
  try {
    var exp = Parser().parse(userInput);
    var evaluation = exp.evaluate(EvaluationType.REAL, ContextModel());
    return evaluation.toString();
  } catch (e) {
    return "Error";
  }
}
