import 'package:awalnya_sih_coba2/pages/navigatorpop.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: NavigatorPOPTakeAData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
