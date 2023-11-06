import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  late final Widget child;
  late final Color color;
  MyBox({required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 30,
      width: 100,
      child: child,
    );
  }
}
