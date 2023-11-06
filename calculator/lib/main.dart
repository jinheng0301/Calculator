import 'package:calculator/functions/functions.dart';
import 'package:calculator/mode_exchange/lightAndDark.dart';
import 'package:calculator/mode_exchange/theme/dark_theme.dart';
import 'package:calculator/mode_exchange/theme/light_theme.dart';
import 'package:calculator/mode_exchange/theme/dark_theme.dart';
import 'package:calculator/mode_exchange/theme/theme_provider.dart';
import 'package:calculator/screens/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      child: MyApp(),
      create: (context) => ThemeProvider(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Calculator(),
      // home: HomePage(),
      // theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
