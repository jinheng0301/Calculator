import 'package:calculator/functions/functions.dart';
import 'package:calculator/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;

  CustomButton({required this.text});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    String text = widget.text;
    // Accessing the 'text' property of the CustomButton

    return InkWell(
      splashColor: Color(0xFF1d2630),
      child: Ink(
        decoration: BoxDecoration(
          color: getBgColor(text),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 0.5,
              offset: Offset(-3, -3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: getColor(text),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onTap: () {
        print('text: $text');
        setState(() {
          result = handleButtons(text, userInput);
          userInput = result;
          print('updated userInput: $userInput');
          print('Result: $result');
        });
      },
    );
  }
}
