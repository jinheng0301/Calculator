import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  late final Color color;
  late void Function() onTap;
  MyButton({required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Icon(
              Icons.light_mode,
            ),
          ],
        ),
      ),
    );
  }
}
