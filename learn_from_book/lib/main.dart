import 'package:flutter/material.dart ';
import 'package:learn_from_book/pages/home.dart';
import 'package:learn_from_book/pages/showDatePicker.dart';

void main(List<String> args) {
  const MyApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowDatePicker(),
    );
  }
}
